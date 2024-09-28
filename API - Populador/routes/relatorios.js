const express = require('express');
const router = express.Router();

module.exports = (db) => {
  router.get('/doadores-mais-doaram-sangue', (req, res) => {
    db.query('SELECT do.nome, do.sobrenome, count(*) as qtdRegistros, sum(doc.mlSangue) as qtdMls FROM Doadores do JOIN Doacoes doc on doc.codDoador = do.codDoador GROUP BY do.codDoador ORDER BY sum(doc.mlSangue) desc;', (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json(results);
    });
  });
  
  router.get('/centros-com-mais-coletas', (req, res) => {
    db.query('SELECT ce.nomeLocal, ce.endereco, count(*) as qtdRegistros, sum(doc.mlSangue) as qtdMls FROM CentrosDoacao ce JOIN Doacoes doc on doc.codCentroDoacao = ce.codCentroDoacao GROUP BY ce.codCentroDoacao ORDER BY sum(doc.mlSangue) desc;', (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json(results);
    });
  });
  
  router.get('/tipos-sanguineos-mais-retirados', (req, res) => {
    db.query('SELECT ts.nomeTipoSang, ts.totalDisponivel, count(*) as qtdRegistros, sum(ret.mlSangue) as qtdMls FROM TiposSanguineos ts JOIN RetiradasSangue ret on ret.codTipoSanguineo = ts.codTipoSanguineo GROUP BY ts.codTipoSanguineo ORDER BY sum(ret.mlSangue) desc;', (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json(results);
    });
  });
 
  return router;
};
