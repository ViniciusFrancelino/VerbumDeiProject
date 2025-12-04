var express = require("express");
var router = express.Router();

var dashController = require("../controllers/dashController");

router.get("/dash/:idUsuario", function (req, res) {    
    dashController.plotarKpis(req, res);
});

router.get("/graficos/:idUsuario", function (req, res) {
    dashController.exibirGrafico(req, res);
});

module.exports = router;