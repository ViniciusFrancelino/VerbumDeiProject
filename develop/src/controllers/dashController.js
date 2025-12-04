var dashModel = require("../models/dashModel");

function plotarKpis(req, res) {

    var idUsuario = req.params.idUsuario;
    console.log(idUsuario);
    
    dashModel.plotarKpis(idUsuario).then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

function exibirGrafico(req, res) {

   var idUsuario = req.params.idUsuario;

    dashModel.exibirGrafico(idUsuario).then(function (resultado) {
           if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as ultimas medidas.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

module.exports = {
    plotarKpis,
    exibirGrafico
};