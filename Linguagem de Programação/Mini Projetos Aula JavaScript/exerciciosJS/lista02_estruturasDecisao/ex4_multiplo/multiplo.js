var btn = document.getElementById("btnCalcular")
btn.addEventListener('click', calcule)

function calcule(){
    var n1 = Number(document.getElementById("n1").value)
    var n2 = Number(document.getElementById("n2").value)

    var resultado 

    if (n2 % n1 == 0){
        resultado = "N1 é multiplo de N2"
    } else {
        resultado = "N1 não é multiplo de N2"
    }

    document.getElementById("result").innerText = resultado
}