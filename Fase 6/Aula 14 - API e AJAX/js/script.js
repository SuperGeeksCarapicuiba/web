let btnBusca = $("#btnBusca");
let btnBuscaFilme = $("#btnBuscaFilme");

btnBusca.click(buscarPokemon);
btnBusca.click(buscarPersonagem);
btnBuscaFilme.click(buscarFilmePorPersonagem);

function buscarPokemon(){
    // $.get(URL, funcaoDeRetorno)
    $.get("https://pokeapi.co/api/v2/pokemon/"+Math.floor(Math.random(1, length) * 800), preencherCampo)
    // $.get("https://pokeapi.co/api/v2/pokemon?limit=800&offset=100", preencherCampo)
}

function buscarPersonagem(){
    $.get("https://swapi.dev/api/people/"+Math.floor(Math.random(1, 83) * 10), preencherCampo_v2)
}

function preencherCampo(data){
    console.log(data.name);

    $("#pokeEscolhido").text(data.name);
    
}

function preencherCampo_v2(data){
    console.log(data.name);
    $("#person").text(data.name);
}



function buscarFilmePorPersonagem(){
    var nome = $("#buscarFilmePorNomePerson").val();
    $.get("https://swapi.dev/api/people/?search=" + nome, popularTabela);
}

function popularTabela(data){
    console.log(data.results[0].name);
    $("#lblFilme").text(data.results[0].name);

    console.log(data.results[0].films);
    $("#tabelaFilmes").find("tr:gt(0)").remove();
    
    for(var i = 0; i < data.results[0].films.length; i++){
        $.get(data.results[0].films[i], criaLinha);
    }
}

function criaLinha(data){
    var htmlFinal = "<tr><td>" + data.title + "</td>" +
        "<td>" + data.episode_id + "</td>" +
        "<td>" + data.director +"</td></tr>";

    $("#tabelaFilmes").append(htmlFinal);
}