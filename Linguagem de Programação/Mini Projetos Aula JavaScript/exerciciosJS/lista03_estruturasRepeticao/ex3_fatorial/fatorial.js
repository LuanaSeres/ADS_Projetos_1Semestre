//metodo 1
/*var btn = document.getElementById("btnCalcular")
btn.addEventListener('click', calcule)

function calcule(){
    var n1 = Number(document.getElementById("n1").value)
    var resultado = 1
    var cont = 2

    if(n1 <= 0){
        resultado = "Informe número positivo"
    } else{
        while(cont <= n1){
            resultado *= cont
            cont++
        }
    }

    document.getElementById("result").innerText = resultado
}*/

//metodo 2
/*var btn = document.getElementById("btnCalcular")
btn.addEventListener('click', calcule)

function calcule(){
    let n1 = Number(document.getElementById("n1").value)
    let resultado = 1

    while(n1 >= 1){
        resultado = resultado * n1
        n1--
    }

    document.getElementById("result").innerText = resultado
}*/

//medoto 3
/*var btn = document.getElementById("btnCalcular")
btn.addEventListener('click', calcule)

function calcule(){
    let n1 = Number(document.getElementById("n1").value)
    let resultado = 1

    for(let i = n1; i >= 1; i--){
        resultado = resultado * i
    }

    document.getElementById("result").innerText = resultado
}*/

//metodo 4
/*var btn = document.getElementById("btnCalcular")
btn.addEventListener('click', calcule)

function calcule(){
    let n1 = Number(document.getElementById("n1").value)
    let result = document.getElementById("result")
    result.innerText = fatorial(n1)

}

function fatorial(n){
    if(n == 1)
        return 1

    return n*fatorial(n-1)
}*/

//metodo 5