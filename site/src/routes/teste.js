var express = require("express");
var router = express.Router();

var testeController = require("../controllers/testeController");

router.get("/", function (req, res) {
    testeController.testar(req, res);
});

// router.get("/listar", function (req, res) {
//     testeController.listar(req, res);
// });

//Recebendo os dados do html e direcionando para a função augusto de testeController.js
router.post("/augusto", function (req, res) {
    console.log("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
    testeController.augusto(req, res);
})

// router.post("/autenticar", function (req, res) {
//     testeController.entrar(req, res);
// });

module.exports = router;