var express = require("express");
var router = express.Router();

var dashController = require("../controllers/dashController");

router.get("/dash/:idUsuario", function (req, res) {    
    dashController.plotarKpis(req, res);
});

module.exports = router;