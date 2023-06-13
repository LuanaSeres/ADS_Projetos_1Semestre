//metodo 1
/*var btn = document.getElementById("btnCalcular")
btn.addEventListener("click", mdc)

function mdc(){
    let n1 = parseInt(document.getElementById("n1").value)
    let n2 = parseInt(document.getElementById("n2").value)

    if(n1==n2){
        let result = document.getElementById("result")
        result.innerText = n1
    }else{
        let ctrl
        n1 > n2 ? ctrl = n2 : ctrl = n1
        while(n1%ctrl != 0 && n2%ctrl != 0)
            ctrl--

        result.innerText = ctrl
    }
}*/

//metodo 2
/*var btn = document.getElementById("btnCalcular")
btn.addEventListener("click", mdc)

function mdc(){
    let n1 = parseInt(document.getElementById("n1").value)
    let n2 = parseInt(document.getElementById("n2").value)
    let result = document.getElementById("result")

    if(n1>n2){
        for(let ctrl = n2; ctrl >= 1; ctrl--){
            if(n1%ctrl == 0 && n2%ctrl == 0){
                result.innerText = ctrl
                break
            }
        }    
    }else{
        for(let ctrl = n1; ctrl >= 1; ctrl--){
            if(n1%ctrl == 0 && n2%ctrl == 0){
                result.innerText = ctrl
                return
            }
        }  
    }
}*/

//metodo 3
/*var btn = document.getElementById("btnCalcular")
btn.addEventListener("click", executar)

var result = document.getElementById("result")

function executar(){
    let n1 = parseInt(document.getElementById("n1").value)
    let n2 = parseInt(document.getElementById("n2").value)

    if(n1>n2){
       result.innerText = mdc(n1, n2)    
    }else{
        result.innerText = mdc(n2, n1)
    }
}

function mdc(maior, menor){
    for(let ctrl = menor; ctrl >= 1; ctrl--){
            if(maior%ctrl == 0 && menor%ctrl == 0){
                return ctrl
            }
        }  
}*/

//metodo 4
/*var btn = document.getElementById("btnCalcular")
btn.addEventListener("click", executar)

var result = document.getElementById("result")

function executar(){
    let n1 = parseInt(document.getElementById("n1").value)
    let n2 = parseInt(document.getElementById("n2").value)

    if(n1>n2){
       result.innerText = mdc(n1, n2)    
    }else{
        result.innerText = mdc(n2, n1)
    }
}

function mdc(maior, menor){
    if(maior%menor==0)
        return menor
    for(let ctrl = parseInt(menor/2); ctrl >= 1; ctrl--){
            if(maior%ctrl == 0 && menor%ctrl == 0){
                return ctrl
            }
        }  
}*/

//metodo 5
/*var btn = document.getElementById("btnCalcular")
btn.addEventListener("click", executar)

var result = document.getElementById("result")

function executar(){
    let n1 = parseInt(document.getElementById("n1").value)
    let n2 = parseInt(document.getElementById("n2").value)

    if(n1>n2){
       result.innerText = mdc(n1, n2)    
    }else{
        result.innerText = mdc(n2, n1)
    }
}

function mdc(maior, menor){
    while(menor != 0){
        let aux = maior 
        maior = menor 
        menor = aux % menor
    }

    return maior
}*/

//metodo 6
var btn = document.getElementById("btnCalcular")
btn.addEventListener("click", executar)

var result = document.getElementById("result")

function executar(){
    let n1 = parseInt(document.getElementById("n1").value)
    let n2 = parseInt(document.getElementById("n2").value)

    if(n1>n2){
       result.innerText = mdc(n1, n2)    
    }else{
        result.innerText = mdc(n2, n1)
    }
}

function mdc(maior, menor){
    if(menor == 0)
        return maior

    return mdc(menor, maior%menor)
}