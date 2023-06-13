//VAR: Escopo global
//Qualquer um acessa essa variavel

/*
    getElementById - pega um elemento por id.

    getElementByClass - pega um elemento por classe

    querySelector - pega um objeto por classe, id

    querySelectorAll - pega todos os objetos daquela id/classe
*/ 

/*
var teste_global = "olá mundo"

function local(){

    //escopo local
    //so acessa aqui
    let teste_local = "teste01"
    alert(teste_local)
}

local()
*/

//coletar e armazenar a informação
var nome = document.querySelector("#nome").value

//eventos...
/*
    quando algum evento acontecer, faz uma tarefa

    addEventListener("evento", o que fazer)
*/
//botão submit                     evento
//document.querySelector("#submit").addEventListener()

var botao_submit = document.getElementById("submit")

//chamando o evento para o botão
botao_submit.addEventListener("click", menssagem("Ola Mundo"))

//função - javascript
/*
    é um conjunto de tarefas/instruções que servirão com um proposito especifico para cada tarefa
    ex: o codigo é sobre cozinhar um bolo, uma função pode ser o ato de ligar o forno.
    não tem como ligar o forno, se eu não chamar o passo de ligar o forno (ELA NÃO SE EXECUTA SOZINHA)
*/
//comando  nome    parametros
function menssagem (texto){
    alert(texto)
}