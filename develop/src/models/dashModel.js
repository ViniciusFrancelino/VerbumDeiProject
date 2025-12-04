var database = require("../database/config");

function plotarKpis(idUsuario) {

    var instrucaoSql = ``;
    instrucaoSql = `select SUM(pontuacao) from quizResultado where idUsuario = ${idUsuario};`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    plotarKpis
};