function calcular(operacao){
    var n1 = Number(document.getElementById("n1").value)
    var n2 = Number(document.getElementById("n2").value)
    switch(operacao){
        case '+':
            result = n1 + n2
            break
        case '-':
            result = n1 - n2
            break
        case '*':
            result = n1 * n2
            break
        case '/':
            result = n1 / n2
            break
    }
    document.getElementById("result").innerText = result
}