const express = require('express');
const router = express.Router();

module.exports = (db) => {
  router.get('/', (req, res) => {
    db.query('SELECT * FROM Funcionarios', (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json(results);
    });
  });

  router.get('/:id', (req, res) => {
    const { id } = req.params;
    db.query('SELECT * FROM Funcionarios WHERE codFuncionario = ?', [id], (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      if (results.length === 0) return res.status(404).json({ message: 'Funcionário não encontrado' });
      res.json(results[0]);
    });
  });

  router.post('/', (req, res) => {
    const { cpf, email, nome, profissao } = req.body;
    db.query(
      'INSERT INTO Funcionarios (cpf, email, nome, profissao) VALUES (?, ?, ?, ?)',
      [cpf, email, nome, profissao],
      (err, results) => {
        if (err) return res.status(500).json({ error: err.message });
        res.status(201).json({ message: 'Funcionário criado com sucesso' });
      }
    );
  });

  router.put('/:id', (req, res) => {
    const { id } = req.params;
    const { cpf, email, nome, profissao } = req.body;
    db.query(
      'UPDATE Funcionarios SET cpf = ?, email = ?, nome = ?, profissao = ? WHERE codFuncionario = ?',
      [cpf, email, nome, profissao, id],
      (err, results) => {
        if (err) return res.status(500).json({ error: err.message });
        if (results.affectedRows === 0) return res.status(404).json({ message: 'Funcionário não encontrado' });
        res.json({ message: 'Funcionário atualizado com sucesso' });
      }
    );
  });

  router.delete('/:id', (req, res) => {
    const { id } = req.params;
    db.query('DELETE FROM Funcionarios WHERE codFuncionario = ?;', [id], (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      if (results.affectedRows === 0) return res.status(404).json({ message: 'Funcionário não encontrado' });
      res.json({ message: 'Funcionário deletado com sucesso' });
    });
  });

  return router;
};
