var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");

router.get("/ultimas/:idNota", function (req, res) {
    medidaController.buscarUltimasMedidas(req, res);
});


router.get("/tempo-real/:idAquario", function (req, res) {
    medidaController.buscarMedidasEmTempoReal(req, res);
})

router.post("/notas", function (req, res) {
    usuarioController.cadastrar(req, res);
})

module.exports = router;