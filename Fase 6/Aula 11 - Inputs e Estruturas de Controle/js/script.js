let btn = document.getElementById("btn");
let pass = document.getElementById("senha");

let btnSelect = document.getElementById("btn2");
let op = document.getElementById('opcoes');

let btnFor = document.getElementById('btnFor');
let qtnInput = document.getElementById('qtd');
let htmlFinal = '';

let btnWhile = document.getElementById('btnWhile');
let num;

function mostrarSenha()
{
    if(pass.value == "super123")
    {
        alert("Bem vindo!");
    } else {
        alert("Senha Errada \n Tente novamente!");
    }
    console.log("Valor da senha: "+pass.value);
}

btn.onclick = mostrarSenha;

function selectOption()
{
    switch(op.value)
    {
        case '1':
            alert("Selecionou o 1");
            break;
        case '2':
            alert("Selecionou o 2");
            break;
        case '3':
            alert("Selecionou o 3");
            break;
        default:
            alert("NADA!");
    }
    console.log("Opcao selecionada: "+op.value);
}

btnSelect.onclick = selectOption;

function inputFor()
{
    for(let i  = 0; i < qtnInput.value; i++)
    {
        htmlFinal += 'Nome: <input placeholder="oi"/> <br/>';
        document.getElementById('nomes').innerHTML = htmlFinal;
    }
    
}

btnFor.onclick = inputFor;

function usandoWhile()
{
    num = Math.floor(Math.random() * 10);
    console.log(num);
    htmlFinal = '';

    while(num != 2)
    {
        htmlFinal += num;
        num = Math.floor(Math.random() * 10);
        
    }
    document.getElementById('numeros').innerHTML = htmlFinal;

    
}

btnWhile.onclick = usandoWhile;

var i = 0;
do {
    alert(i);
    i++;
}

while (i < 5);