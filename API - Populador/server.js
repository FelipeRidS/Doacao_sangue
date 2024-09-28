const express = require('express');
const mysql = require('mysql2');
const app = express();
const port = 3000;

app.use(express.json());

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'udesc',
    database: 'SistemaDoacao'
});

// Conectar ao banco de dados
connection.connect(error => {
    if (error) {
        console.error('Erro ao conectar ao banco de dados:', error);
        return;
    }
    console.log('Conectado ao banco de dados MySQL.');
});

// Importar e usar as rotas
app.use('/tipos-sanguineos', require('./routes/tiposSanguineos')(connection));
app.use('/funcionarios', require('./routes/funcionarios')(connection));
app.use('/doadores', require('./routes/doadores')(connection));
app.use('/centros-doacao', require('./routes/centrosDoacao')(connection));
app.use('/doacoes', require('./routes/doacoes')(connection));
app.use('/retiradas-sangue', require('./routes/retiradasSangue')(connection));
app.use('/relatorios', require('./routes/relatorios')(connection));

app.listen(port, () => {
    console.log(`Servidor rodando na porta ${port}`);
});
