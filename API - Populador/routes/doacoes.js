const express = require('express');
const router = express.Router();

module.exports = (db) => {
  router.get('/', (req, res) => {
    db.query('SELECT * FROM Doacoes', (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json(results);
    });
  });

  router.get('/:id', (req, res) => {
    const { id } = req.params;
    db.query('SELECT * FROM Doacoes WHERE codDoacao = ?', [id], (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      if (results.length === 0) return res.status(404).json({ message: 'Doação não encontrada' });
      res.json(results[0]);
    });
  });

  router.post('/', (req, res) => {
    const { codDoador, codFuncionario, codCentroDoacao, data, mlSangue } = req.body;
    db.query(
      'INSERT INTO Doacoes (codDoador, codFuncionario, codCentroDoacao, data, mlSangue) VALUES (?, ?, ?, ?, ?)',
      [codDoador, codFuncionario, codCentroDoacao, data, mlSangue],
      (err, results) => {
        if (err) return res.status(500).json({ error: err.message });
        res.status(201).json({ message: 'Doação criada com sucesso' });
      }
    );
  });

  router.put('/:id', (req, res) => {
    const { id } = req.params;
    const { codDoador, codFuncionario, codCentroDoacao, data, mlSangue } = req.body;
    db.query(
      'UPDATE Doacoes SET codDoador = ?, codFuncionario = ?, codCentroDoacao = ?, data = ?, mlSangue = ? WHERE codDoacao = ?',
      [codDoador, codFuncionario, codCentroDoacao, data, mlSangue, id],
      (err, results) => {
        if (err) return res.status(500).json({ error: err.message });
        if (results.affectedRows === 0) return res.status(404).json({ message: 'Doação não encontrada' });
        res.json({ message: 'Doação atualizada com sucesso' });
      }
    );
  });

  router.delete('/:id', (req, res) => {
    const { id } = req.params;
    db.query('DELETE FROM Doacoes WHERE codDoacao = ?', [id], (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      if (results.affectedRows === 0) return res.status(404).json({ message: 'Doação não encontrada' });
      res.json({ message: 'Doação deletada com sucesso' });
    });
  });

  return router;
};
