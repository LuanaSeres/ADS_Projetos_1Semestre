//DOM
//window.document.write(window.document.URL)

//Busca por marca(html)
//var p = window.document.getElementsByTagName('p')[1]
//window.document.write(p.innerText)

//Busca por id
//var p = window.document.getElementById('p1')
//window.document.write(p.innerHTML)

//por classe
//var p = window.document.getElementsByClassName('p2')[0]


//por nome
//var p = window.document.getElementsByName()

//po seletor id ou class  #id  .class
//var p = window.document.querySelector('p.p2')
//window.document.write(p.innerText)


//Eventos no DOM//
/*-eventos de mouse
 mouseenter
 mouseout
mousedow
mouseup
click
mousemove*/
/* function ação(){
    bloco
}*/

var box = window.document.getElementById("click")
box.addEventListener("mouseenter", entrar)
box.addEventListener("mouseout", sair)
box.addEventListener("click", clicar)

function entrar(){
    //var box = window.document.getElementById("click")
    box.style.background="yellow"
}

function sair(){
    //var box = window.document.getElementById("click")
    box.style.background="green"
    box.innerText="Clique em mim"
}

function clicar(){
    box.innerText="Clicou!"
}