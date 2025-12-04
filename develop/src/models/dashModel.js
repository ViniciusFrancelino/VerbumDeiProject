var database = require("../database/config");

function plotarKpis(idUsuario) {

    var instrucaoSql = ``;

    instrucaoSql = `SELECT 
    (SELECT tipoQuiz 
     FROM quizResultado 
     WHERE idUsuario = ${idUsuario}
     GROUP BY tipoQuiz 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS quizFavoritos,
    ROUND(AVG(pontuacao) * 100 / 10, 2) AS porcentual,
    SUM(idUsuario) AS TentativasRealizadas
    FROM quizResultado
    WHERE idUsuario = ${idUsuario};
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function  exibirGrafico(idUsuario) {

    var instrucaoSql = `SELECT idUsuario, tipoQuiz, pontuacao, id
    FROM quizResultado
    WHERE idUsuario = 1
    ORDER BY id DESC
;`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    plotarKpis,
    exibirGrafico
};