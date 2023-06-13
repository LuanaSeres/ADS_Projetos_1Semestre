var btn = document.getElementById("btnCalcular")
btn.addEventListener("click", calcularMedia)

function calcularMedia(){
    let n1 = Number(document.getElementById("n1").value)

    document.getElementById("result").innerText = n1/25.4
}