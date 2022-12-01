var testeModel = require("../models/testeModel");

function testar(req, res) {
    console.log("ENTRAMOS NA testeController");
    res.json("ESTAMOS FUNCIONANDO!");
}

function augusto(req, res) {
    var nome1 = req.body.nome1Server;
    console.log("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb")


    if (nome1 == undefined) {
        res.status(400).send("O teste está indefinido");
    } else {
        testeModel.augusto(nome1).then(
            function (resultado) {
                    console.log("ccccccc")

                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o enviar! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            )
    }
}

module.exports = {
    augusto
}