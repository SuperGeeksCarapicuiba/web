// var a = 1;
// var b = a + 1;

// var pessoa = {
//     nome : 'Luiz',
//     idade: 25
// }

// alert(pessoa.nome);

let button = document.querySelector("#btn");
let texto = document.getElementById("txt");
let div = document.querySelector(".cont");

function Teste(){
    // alert("Foi!");
    texto.innerHTML = "Primeira aula!";
}

button.onclick = Teste