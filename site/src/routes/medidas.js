var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");

router.get("/ultimas/:idNota", function (req, res) {
    medidaController.buscarDados(req, res);
});

router.post("/notas", function (req, res) {
    usuarioController.cadastrar(req, res);
})

module.exports = router;