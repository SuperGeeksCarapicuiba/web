$("#inputDivId").hide();
$("#labelDivId").hide();

// o Ready() especifica oque deve acontecer quando um evento pronto ocorrer
// Ou seja, espera o elemento do ID bemVindoId ser carregado pela DOM
// Nessa caso chama a função validarCookieNome
$("#bemVindoId").ready(validarCookieNome);

// change() dispara evento de mudança ou anexa uma função para ser executada
//  quando ocorrer um evento de mudança
$("#selectCoresId").change(selecionarCor);

$("#bemVindoId").ready(validarCookieCor);

// Lista de Cookies
var meuCookie = {};

function validarCookieNome(){
    preencherCookie();

    if(meuCookie.nome != undefined){
        $("#labelDivId").show();
        $("#labelId").text(meuCookie.nome);
        $("#inputDivId").hide();
    } else {
        $("#inputDivId").show();
    }
}

function preencherCookie(){
    var camposValor = document.cookie.split(";");
    console.log("Separando campos/valores uns dos outros: ",camposValor);

    for(var i=0; i < camposValor.length; i++)
    {
        var campoValorVector = camposValor[i].split("=");
        console.log(campoValorVector);
        meuCookie[campoValorVector[0]] = campoValorVector[1];
    }

    console.log("Lista de campo valores: ",meuCookie);
}

$("#buttonEntrarId").click(entrar);

function entrar(){
    var nome = $("#inputNomeId").val();

    criarCookie("nome", nome, 2);

    validarCookieNome();
}

function criarCookie(campo, valor, dias){
    var dataExpiracao = new Date();

    dataExpiracao.setTime(dataExpiracao.getTime() + (dias * 24 * 60 * 60 * 1000));

    var campoExpires = "expires=" + dataExpiracao.toUTCString();

    document.cookie = campo + "=" + valor + ";" + campoExpires;
}

function selecionarCor(){
    console.log($("#selectCoresId").val());

    // Pega o valor (cor) do input seleciona
    var cor = $("#selectCoresId").val(); 

    // Muda o CSS do label (nome) com o valor do select (cor)
    $("#labelId").css("color", cor);

    // Cria um cookie com o campo cor, valor de cor e o tempo de 2 dias
    criarCookie("cor", cor, 2);
}

function validarCookieCor(){
    // Se houver alguma cor escolhida, coloque no valor do label (nome da pessoa)
    if(meuCookie.cor != undefined){
        $("#labelId").css("color",meuCookie.cor);
    }
}