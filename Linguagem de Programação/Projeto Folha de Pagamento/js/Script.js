/*https://calculosonline.netlify.app/pages/javascript*/


var botao = document.getElementById('botao1')
botao.addEventListener('click',calcular)
var irrf, inss, vt, resultadofinal, inssfaixa

function calcular(){

    var salario =  Number(document.getElementById('salario').value)
    var dependentes = Number(document.getElementById("dependentes").value)
    var vale = Boolean(document.getElementById("checkbox").checked)
    var salario2 = salario

    var obj = document.getElementById("visivel");
    if (obj.classList.contains('caixa2')) {
        obj.className = 'visivel';
    } else {
       
    }
    var irrf, inss, vt, inssfaixa

    
    
    

    /*IRRF até 1.903,98 isento
    1.903,99 a 2.826,65 é 7,5%
    2.826,66 a 3.751,06 é 15%
    3.751,07 a 4.664,68 é 22,5%
    acima de 4.664,69 é 27,5% */

    
    switch(true) {
        case salario2 >= 7507.49:
            salario2 = 7507.49;
            
        case salario2 >= 3856.94:
             inssfaixa = salario2 - 3856.94;
             inss += inssfaixa * 0.14;
            salario2 = 3856.94;
            
        case salario >= 2571.29 :
             inssfaixa = salario2 - 2571.29;
             inss += inssfaixa * 0.12;
            salario2 =  2571.29;
           
        case salario2 >= 1302:
             inssfaixa = salario2 - 1302;
            inss += inssfaixa * 0.9;
            salario2 = 1302;
            
         case salario < 1302:
            inssfaixa = salario2;
            inss = inssfaixa * 0.075;
            salario2 = salario2
        }
    

    var salariobase = salario - inss - 189.59 * dependentes

    switch(true) {
        case salariobase <= 1903.98:
            irrf  = 0
            break;
        case salariobase <= 2826.65:
            irrf  = salariobase  * 0.075 - 142.8;
            break;
        case salariobase <= 3751.06 :
            irrf  = salariobase * 0.15 - 354.8;
            break;
        case salariobase <= 4664.68 :
            irrf  = salariobase * 0.225 - 636.13;
            break;
        default:
            irrf  = salariobase * 0.275 - 869.36;
           
    }

    if(vale){
        vt = Math.round ( salario * 6) / 100;
    }else{
        vt = 0;
    }
   

    var inssfinal = Math.round(inss *100) / 100
    var irrffinal = Math.round(irrf *100) / 100

    var sal = salario - (irrffinal + inssfinal + vt)
   
    /*var salfinal = Math.round(sal * 100) / 100
    document.getElementById('salbruto').innerText = "R$ " + salario
    document.getElementById('inss').innerText = "R$ " + inssfinal
    document.getElementById('irrf').innerText = "R$ " + irrffinal
    document.getElementById('vt').innerText = "R$ " + vt
    document.getElementById('salfinal').innerText = "R$ " + salfinal
    console.log(salario)*/
    
    var tabela = "<table border='1'>";

    tabela += "<tr>";
    tabela += "<td>Salário Bruto: </td>";
    tabela += "<td> R$ " + salario + "</td>";
    tabela += "<tr>";

    tabela += "<tr>";
    tabela += "<td>INSS: </td>";
    tabela += "<td> R$ " + inssfinal + "</td>";
    tabela += "<tr>";

    tabela += "<tr>";
    tabela += "<td>IRRF: </td>";
    tabela += "<td> R$ " + irrffinal + "</td>";
    tabela += "<tr>";

    tabela += "<tr>";
    tabela += "<td>Vale Transporte: </td>";
    tabela += "<td> R$ " + vt + "</td>";
    tabela += "<tr>";

    tabela += "<tr>";
    tabela += "<td>Salário Líquido: </td>";
    tabela += "<td> R$ " + sal + "</td>";
    tabela += "<tr>";
    
    tabela += "</table>";

    document.getElementById("tabelinha").innerHTML = tabela;


    /*
    salario < 1.302,00  -  7,5%
    salario > 1.302,01 < 2.571,29 - 9%
    salario > 2.571,30 < 3.856,94 - 12%
    salario > 3.856,95 < 7.507,49 - 14%
    salario < 7.507,49 - 14%      com o valor do maximo
    */

    
}
