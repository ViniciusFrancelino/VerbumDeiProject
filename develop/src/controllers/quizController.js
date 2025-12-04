var quizModel = require("../models/quizModel");

function registrar(req, res) {
    var idUsuario = req.body.idusuarioServer;
    var pontuacao = req.body.pontuacaoServer;
    var tipoQuiz = req.body.tipoQuizServer;

    quizModel.registrar(idUsuario, pontuacao, tipoQuiz)
        .then(
            function (resultado) {
                res.json(resultado);
            }
        ).catch(
            function (erro) {
                console.log(erro);
                console.log(
                    "\nHouve um erro ao realizar o registro! Erro: ",
                    erro.sqlMessage
                );
                res.status(500).json(erro.sqlMessage);
            }
        );

}

module.exports = {
    registrar
};