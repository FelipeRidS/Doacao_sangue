const express = require('express');
const router = express.Router();

module.exports = (db) => {
  router.get('/', (req, res) => {
    db.query('SELECT * FROM Doadores', (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json(results);
    });
  });

  router.get('/:id', (req, res) => {
    const { id } = req.params;
    db.query('SELECT * FROM Doadores WHERE codDoador = ?', [id], (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      if (results.length === 0) return res.status(404).json({ message: 'Doador não encontrado' });
      res.json(results[0]);
    });
  });

  router.post('/', (req, res) => {
    const { nome, sobrenome, cpf, telefone, codTipoSanguineo, endereco } = req.body;
    db.query(
      'INSERT INTO Doadores (nome, sobrenome, cpf, telefone, codTipoSanguineo, endereco) VALUES (?, ?, ?, ?, ?, ?)',
      [nome, sobrenome, cpf, telefone, codTipoSanguineo, endereco],
      (err, results) => {
        if (err) return res.status(500).json({ error: err.message });
        res.status(201).json({ message: 'Doador criado com sucesso' });
      }
    );
  });

  router.put('/:id', (req, res) => {
    const { id } = req.params;
    const { nome, sobrenome, cpf, telefone, codTipoSanguineo, endereco } = req.body;
    db.query(
      'UPDATE Doadores SET nome = ?, sobrenome = ?, cpf = ?, telefone = ?, codTipoSanguineo = ?, endereco = ? WHERE codDoador = ?',
      [nome, sobrenome, cpf, telefone, codTipoSanguineo, endereco, id],
      (err, results) => {
        if (err) return res.status(500).json({ error: err.message });
        if (results.affectedRows === 0) return res.status(404).json({ message: 'Doador não encontrado' });
        res.json({ message: 'Doador atualizado com sucesso' });
      }
    );
  });

  router.delete('/:id', (req, res) => {
    const { id } = req.params;
    db.query('DELETE FROM Doadores WHERE codDoador = ?', [id], (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      if (results.affectedRows === 0) return res.status(404).json({ message: 'Doador não encontrado' });
      res.json({ message: 'Doador deletado com sucesso' });
    });
  });

  return router;
};
