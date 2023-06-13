var btn = document.getElementById("btnCalcular")
btn.addEventListener('click', calcule)

function calcule(){
    var n1 = Number(document.getElementById("n1").value)
    var cont = 2
    var resultado = "Primo"

    while(cont < n1){
        if(n1 % cont == 0){
            resultado = "Não é primo"
        }
        cont++
    }

    document.getElementById("result").innerText = resultado
}