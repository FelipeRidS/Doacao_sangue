const express = require('express');
const router = express.Router();

module.exports = (db) => {
  router.get('/', (req, res) => {
    db.query('SELECT * FROM CentrosDoacao', (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json(results);
    });
  });

  router.get('/:id', (req, res) => {
    const { id } = req.params;
    db.query('SELECT * FROM CentrosDoacao WHERE codCentroDoacao = ?', [id], (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      if (results.length === 0) return res.status(404).json({ message: 'Centro de doação não encontrado' });
      res.json(results[0]);
    });
  });

  router.post('/', (req, res) => {
    const { nomeLocal, endereco } = req.body;
    db.query(
      'INSERT INTO CentrosDoacao (nomeLocal, endereco) VALUES (?, ?)',
      [nomeLocal, endereco],
      (err, results) => {
        if (err) return res.status(500).json({ error: err.message });
        res.status(201).json({ message: 'Centro de doação criado com sucesso' });
      }
    );
  });

  router.put('/:id', (req, res) => {
    const { id } = req.params;
    const { nomeLocal, endereco } = req.body;
    db.query(
      'UPDATE CentrosDoacao SET nomeLocal = ?, endereco = ? WHERE codCentroDoacao = ?',
      [nomeLocal, endereco, id],
      (err, results) => {
        if (err) return res.status(500).json({ error: err.message });
        if (results.affectedRows === 0) return res.status(404).json({ message: 'Centro de doação não encontrado' });
        res.json({ message: 'Centro de doação atualizado com sucesso' });
      }
    );
  });

  router.delete('/:id', (req, res) => {
    const { id } = req.params;
    db.query('DELETE FROM CentrosDoacao WHERE codCentroDoacao = ?', [id], (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      if (results.affectedRows === 0) return res.status(404).json({ message: 'Centro de doação não encontrado' });
      res.json({ message: 'Centro de doação deletado com sucesso' });
    });
  });

  return router;
};
