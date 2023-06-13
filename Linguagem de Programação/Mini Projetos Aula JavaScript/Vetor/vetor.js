////////////////////////////////////////////////
/*let n = [3,4,1,5]
console.log(n[3])//procura conteudo da "casa"
console.log(n.indexOf(4))//procura a "casa" do conteudo
console.log(n)//exibe todo o vetor
console.log(n.length)//tamanho do vetor (quantidade de posições)
for(let i = 0; i < n.length; i++){ //mostra os elementos do vetor, um em cada linha
    console.log(n[i])
}*/
////////////////////////////////////////////////

/*let n1 = [3,4,1,5,9]
let n2 = []
//adiciona o valor do n1 no n2 ao contrario
for(let i = 0; i < n1.length; i++){
    //n2[3-i] = n1[i]
    n2[(n1.length-1)-i] = n1[i]
}

console.log(n1)
console.log(n2)*/

///// INVERTER N1

/*let n1 = [3,4,1,5,9]
let aux
//adiciona o valor do n1 no n2 ao contrario
for(let i = 0; i < n1.length/2; i++){
    aux = n1[n1.length-1-i]
    n1[n1.length-1-i] = n1[i]
    n1[i] = aux
}

console.log(n1)*/

///// ordenar em ordem crescente

/*var num = [3,6,1,7,9,4,2]

for(var i=0; i<num.length; i++){
    for(var j=0; j<num.length-1; j++){
        if(num[j] > num[j+1]){
            aux = num[j]
            num[j] = num[j+1]
            num[j+1] = aux
        }
    }
}
console.log(num)*/

//crie um vetor com números diversos e verifique se existe e um posição esta um determinado número
//var n = 7 R: numero 7 não encontrato// n = 2 R: número 2 na posição 0, 2
var vetor = [4,6,99,21,9,0,68,12,31,21,289,2,2,0,656,1,2,0,6,6]
console.log(pesquisar(2))

function pesquisar(n){
    let aux = []

    for(let i = 0; i < vetor.length; i++){
        if(vetor[i] == n)
        aux.push(i)
    }
    if(aux.length == 0)
        return `O número ${n} não foi encontrado`
    return `o número ${n} foi encontrado na(s) posição(ões) ${aux}`
}
//return `O número ${n} foi encontrado na posição ${i}`
//return `O número ${n} não encontrado` //"o numero" + n + " não foi encontrado"

