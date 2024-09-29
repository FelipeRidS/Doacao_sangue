const express = require('express');
const router = express.Router();

module.exports = (db) => {
  router.get('/', (req, res) => {
    db.query('SELECT * FROM RetiradasSangue', (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json(results);
    });
  });

  router.get('/:id', (req, res) => {
    const { id } = req.params;
    db.query('SELECT * FROM RetiradasSangue WHERE codRetiradaSangue = ?', [id], (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      if (results.length === 0) return res.status(404).json({ message: 'Retirada de sangue não encontrada' });
      res.json(results[0]);
    });
  });

  router.post('/', (req, res) => {
    const { codTipoSanguineo, mlSangue } = req.body;
    db.query(
      'INSERT INTO RetiradasSangue (codTipoSanguineo, mlSangue) VALUES (?, ?)',
      [codTipoSanguineo, mlSangue],
      (err, results) => {
        if (err) return res.status(500).json({ error: err.message });
        res.status(201).json({ message: 'Retirada de sangue criada com sucesso' });
      }
    );
  });

  router.put('/:id', (req, res) => {
    const { id } = req.params;
    const { codTipoSanguineo, mlSangue } = req.body;
    db.query(
      'UPDATE RetiradasSangue SET codTipoSanguineo = ?, mlSangue = ? WHERE codRetiradaSangue = ?',
      [codTipoSanguineo, mlSangue, id],
      (err, results) => {
        if (err) return res.status(500).json({ error: err.message });
        if (results.affectedRows === 0) return res.status(404).json({ message: 'Retirada de sangue não encontrada' });
        res.json({ message: 'Retirada de sangue atualizada com sucesso' });
      }
    );
  });

  router.delete('/:id', (req, res) => {
    const { id } = req.params;
    db.query('DELETE FROM RetiradasSangue WHERE codRetiradaSangue = ?', [id], (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      if (results.affectedRows === 0) return res.status(404).json({ message: 'Retirada de sangue não encontrada' });
      res.json({ message: 'Retirada de sangue deletada com sucesso' });
    });
  });

  return router;
};
