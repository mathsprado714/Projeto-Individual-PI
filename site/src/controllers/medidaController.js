var medidaModel = require("../models/medidaModel");

function buscarDados(req, res) {

    const limite_linhas = 7;

    var idNota = req.params.idNota;

    console.log(`Recuperando as ultimas ${limite_linhas} medidas`);

    medidaModel.buscarDados(idNota, limite_linhas).then(function (resultado) {
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


// function buscarMedidasEmTempoReal(req, res) {

//     var idNota = req.params.idNota;

//     console.log(`Recuperando medidas em tempo real`);

//     medidaModel.buscarMedidasEmTempoReal(idNota).then(function (resultado) {
//         if (resultado.length > 0) {
//             res.status(200).json(resultado);
//         } else {
//             res.status(204).send("Nenhum resultado encontrado!")
//         }
//     }).catch(function (erro) {
//         console.log(erro);
//         console.log("Houve um erro ao buscar as ultimas medidas.", erro.sqlMessage);
//         res.status(500).json(erro.sqlMessage);
//     });
// }

module.exports = {
    buscarDados,
    // buscarMedidasEmTempoReal

}