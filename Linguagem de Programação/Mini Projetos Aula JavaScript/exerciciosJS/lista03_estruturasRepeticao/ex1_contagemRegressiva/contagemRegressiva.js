var btn = document.getElementById("btnCalcular")
btn.addEventListener("click", contar)

function contar(){
    let n = Number.parseInt(document.getElementById("n1").value)

    let resultado = "Resultado= "
    while(n>0){
        resultado+= n + ", "
        n--
    }
    document.getElementById("result").innerText = resultado
} 