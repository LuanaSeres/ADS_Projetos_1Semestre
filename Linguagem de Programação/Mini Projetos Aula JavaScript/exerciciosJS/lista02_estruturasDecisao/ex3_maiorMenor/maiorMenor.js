var btn = document.getElementById("btnCalcular")
btn.addEventListener('click', calcule)

function calcule(){
    var n1 = Number(document.getElementById("n1").value)
    var n2 = Number(document.getElementById("n2").value)
    var resultado = (n1 > n2) ? "N1 é maior" : (n2 > n1) ? "N2 é maior" : "N1 e N2 são iguais"

    document.getElementById("result").innerText = resultado
}