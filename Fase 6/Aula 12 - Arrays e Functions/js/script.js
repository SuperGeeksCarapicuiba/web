let btn = document.getElementById("btn");
let select = document.getElementById("meuSelect");
let btnInput = document.getElementById("btnAdd");
let inputItem = document.getElementById("inputItem");
let btnRemove = document.getElementById("btnRemove");
var valorInput;
let listaCompras = ["Ação", "Aventura", "RPG"];

let soma = document.getElementById("soma");
let sub = document.getElementById("sub");


let preencherSelect = () => {
    var htmlFinal = "";
    var tamanhoLista = listaCompras.length;

    for(var i = 0; i < tamanhoLista; i++)
    {
        htmlFinal += "<option value= " + i + ">" + listaCompras[i] + "</option>"
    }

    select.innerHTML = htmlFinal;
    console.log("Executou");
}

function addItem()
{
    valorInput = inputItem.value;
    listaCompras.push(valorInput);
    preencherSelect();
    inputItem.value = "";
}

function RemoveItem(){
    var valorSelect = select.value;
    listaCompras.splice(valorSelect, 1);
    preencherSelect();
}

function Soma()
{
    let valor1 = parseInt(document.getElementById("inputVal1").value);
    let valor2 = parseInt(document.getElementById("inputVal2").value);
    document.getElementById("resultado").innerHTML = valor1 + valor2;
}

function Subtracaoo()
{
    var val1 = parseInt(document.getElementById("inputVal1").value);
    var val2 = parseInt(document.getElementById("inputVal2").value);
    document.getElementById("resultado").innerHTML = subConta(val1 , val2);
}

function subConta(num1, num2){
    var subtracao = num1 - num2;
    return subtracao;
}

btn.onclick = preencherSelect;
btnInput.onclick = addItem;
btnRemove.onclick = RemoveItem;
soma.onclick = Soma;
sub.onclick = Subtracaoo;
