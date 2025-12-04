var express = require("express");
var router = express.Router();

var quizController = require("../controllers/quizController");

router.post("/registrar", function (req, res) {
    console.log("Estou em quiz.js");
    quizController.registrar(req, res);
});

module.exports = router;