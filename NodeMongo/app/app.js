var express = require('express');
var app = express();

app.get("/", function (req, res) {
	res.send("Teste");
});

app.get("/api", function (req, res) {
	res.json({"index1":"valor1", "index2":"valor2"});
});

app.listen(8080, function() {
	console.log('Funcionando');
});
