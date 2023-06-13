/*console.log("Olá")
var n = 5
if(n<8){
    console.log("É menor")
    console.log("Enyoru no if")
}else{
    console.log("É maior")
    console.log("entrou no else")
}
console.log("Fim")*/



////////    IF/ELSE    //////////
/*var n1 = 10
var n2 = 5
var media=(n1+n2)/2

if(media>=7){
    console.log("Aprovado")
    console.log("Sua média foi: " + media)
}else if(media>=5){
    console.log("Recuperação")
    console.log("Sua média foi: " + media)
}else{
    console.log("Reprovado")
    console.log("Sua média foi: " + media)
}*/

////// SWITCH/CASE //////
/*var n = 2

switch(n){
    case 1:
        console.log("O valor é 1")
        break
    case 2:
        console.log("O valor é 2")
        break
    default:
        console.log("Qualquer coisa")
        break
}*/

/////// DESAFIO 1///////  se antes 12h bom dia, depois 12h boa tarde e depois 18h boa noite
/* 0- domingo, 1- segunda ... 6- sabado*/
/*var data = new Date()
var hora = data.getHours()
var dia = data.getDay()

switch(hora){
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
        console.log("Bom Dia!")
        break
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
        console.log("Boa Tarde!")
        break
    default:
        console.log("Boa Noite")
}*/

//ou

/*if(hora<12){
    console.log("Bom dia")
}else if{
    console.log("Boa tarde")
}else{
    console.log("Boa noite")
}*/


/////desafio 2///// mostrar o dia da semana
/*var data = new Date()
var hora = data.getHours()
var dia = data.getDay()

//var diaSemana = ["Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sab"]
//console.log(diaSemana[dia]) //vetor, array

switch (dia){
    case 0:
        console.log("Domingo")
        break
    case 1:
        console.log("Segunda")
        break
    case 2:
        console.log("Terça")
        break
    case 3:
        console.log("Quarta")
        break
    case 4:
        console.loog("Quinta")
        break
    case 5:
        console.log("Sexta")
        break
    default:
        console.log("Sabado")
}*/