var database = require("../database/config");

function registrar(idUsuario, pontuacao, tipoQuiz){
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function entrar(): ", idUsuario, pontuacao, tipoQuiz);
    var instrucaoSql = '';
    instrucaoSql = `INSERT INTO quizResultado (idUsuario, pontuacao, tipoQuiz) VALUES (${idUsuario}, ${pontuacao}, '${tipoQuiz}');`

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);

}

module.exports = {
    registrar
};