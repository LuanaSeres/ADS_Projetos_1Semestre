var botao_submit = document.getElementById("submit")
botao_submit.addEventListener("click", coleta_dados)

var botao_limpar = document.querySelector("#limpa")
botao_limpar.addEventListener("click", limpa_dados)

function coleta_dados(){
    var nome = document.querySelector("#nome").value
    var endereco = document.getElementById("endereco").value
    var nascimento = document.querySelector("#nascimento").value
    
    var nome_coletado = nome
    var ende_coletado = endereco
    var nasc_coletado = nascimento

    console.log(nome_coletado)
    console.log(ende_coletado)
    console.log(nasc_coletado)
}

function limpa_dados(){
    document.getElementById("nome").value = ""
    document.getElementById("endereco").value = ""
    document.getElementById("nascimento").value = 0
}

function menssagem(){
    console.log("Texto aleatorio")

    return "default"
}