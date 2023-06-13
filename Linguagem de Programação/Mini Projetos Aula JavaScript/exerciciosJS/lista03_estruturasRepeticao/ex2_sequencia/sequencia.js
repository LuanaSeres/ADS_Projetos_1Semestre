var btn = document.getElementById("btnCalcular")
btn.addEventListener('click', calcule)

function calcule(){
    var n1 = Number(document.getElementById("n1").value)
    var n2 = Number(document.getElementById("n2").value)

    if (n2 < n1){ //inverter os numeros caso n2 seja menor
        var aux = n2
        n2 = n1
        n1 = aux
    }

    var resultado = ""

    while (n1 < n2){
        resultado += n1 + ","
        n1++
    }
    resultado += n2

    document.getElementById("result").innerText = resultado
}