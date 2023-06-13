var btn = document.getElementById("btnCalcular")
btn.addEventListener('click', calcule)

function calcule(){
    var n1 = Number(document.getElementById("n1").value)
    var n2 = Number(document.getElementById("n2").value)
    var media = (n1 + n2) / 2
    var resultado

    if (media >= 5){
        resultado = media + " - " + "Aprovado"
    } else {
        resultado = media + " - " + "Reprovado"
    }
    document.getElementById("result").innerText = resultado
}