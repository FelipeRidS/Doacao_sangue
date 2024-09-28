const express = require('express');
const router = express.Router();

module.exports = (db) => {
  router.get('/', (req, res) => {
    db.query('SELECT * FROM TiposSanguineos', (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json(results);
    });
  });

  router.get('/:id', (req, res) => {
    const { id } = req.params;
    db.query('SELECT * FROM TiposSanguineos WHERE codTipoSanguineo = ?', [id], (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      if (results.length === 0) return res.status(404).json({ message: 'Tipo sanguíneo não encontrado' });
      res.json(results[0]);
    });
  });

  router.post('/', (req, res) => {
    const { nomeTipoSang, totalDisponivel } = req.body;
    db.query(
      'INSERT INTO TiposSanguineos (nomeTipoSang, totalDisponivel) VALUES (?, ?)',
      [nomeTipoSang, totalDisponivel],
      (err, results) => {
        if (err) return res.status(500).json({ error: err.message });
        res.status(201).json({ message: 'Tipo sanguíneo criado com sucesso' });
      }
    );
  });

  router.put('/:id', (req, res) => {
    const { id } = req.params;
    const { nomeTipoSang, totalDisponivel } = req.body;
    db.query(
      'UPDATE TiposSanguineos SET nomeTipoSang = ?, totalDisponivel = ? WHERE codTipoSanguineo = ?',
      [nomeTipoSang, totalDisponivel, id],
      (err, results) => {
        if (err) return res.status(500).json({ error: err.message });
        if (results.affectedRows === 0) return res.status(404).json({ message: 'Tipo sanguíneo não encontrado' });
        res.json({ message: 'Tipo sanguíneo atualizado com sucesso' });
      }
    );
  });

  router.delete('/:id', (req, res) => {
    const { id } = req.params;
    db.query('DELETE FROM TiposSanguineos WHERE codTipoSanguineo = ?', [id], (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      if (results.affectedRows === 0) return res.status(404).json({ message: 'Tipo sanguíneo não encontrado' });
      res.json({ message: 'Tipo sanguíneo deletado com sucesso' });
    });
  });

  return router;
};
