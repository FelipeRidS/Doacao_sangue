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

connection.connect(error => {
    if (error) {
        console.error('Erro ao conectar ao banco de dados:', error);
        return;
    }
    console.log('Conectado ao banco de dados MySQL.');

    connection.query('SET FOREIGN_KEY_CHECKS=0', (err, results) => {
        if (err) {
            console.log('Erro ao desativar verificações de chave estrangeira:', err);
        } else {
            console.log('Verificações de chave estrangeira desativadas.');
        }
    });
});

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
