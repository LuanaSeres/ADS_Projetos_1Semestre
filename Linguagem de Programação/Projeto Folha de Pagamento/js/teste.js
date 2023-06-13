var salario2 = 1304
var vale = true
switch(true) {
    case salario2 >= 7507.49:
        salario2 = 7507.49;
        
    case salario2 >= 3856.94:
         inssfaixa = salario2 - 3856.94;
         inss = inssfaixa * 0.14;
        salario2 = 3856.94;
        
    case salario >= 2571.29 :
         inssfaixa = salario2 - 2571.29;
         inss = inssfaixa * 0.12;
        salario2 =  2571.29;
       
    case salario2 >= 1302:
         inssfaixa = salario2 - 1302;
        inss = inssfaixa * 0.9;
        salario2 = 1302;
        
    case salario < 1302:
        inssfaixa = salario2;
        inss = inssfaixa * 0.075;
        salario2 = salario2
}


console.log(inss)