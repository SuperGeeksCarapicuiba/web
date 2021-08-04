// let btnAdicionarItem = $("#btnAdicionarItem");
// let btnFecharCompra = $("#btnFecharCompra");
let btnAdicionarItem = document.querySelector("#btnAdicionarItem");
let btnFecharCompra = document.querySelector("#btnFecharCompra");

// lista de items a serem adicionados pelo construtor
let itens = []; 
let soma = 0;

// Objeto construtor que recebera os parabetros atraves de outra função
function Item(nomeItem, quantidade, preco){
    this.nomeItem = nomeItem;
    this.quantidade = quantidade;
    this.preco = preco;
}


function adicionarItem()
{
    //  Pega o valor do input e salva nas variaveis
    let nomeItemNovo = $("#nomeItemId").val();
    let quantidadeNovo = $("#quantidadeId").val();
    let precoNovo = $("#precoId").val();

    // Cria um novo objeto passando como parametro o valor das variaveis. 
    // var novoItem é a nova referencia ao objeto
    let novoItem = new Item(nomeItemNovo, quantidadeNovo, precoNovo);

    itens.push(novoItem);

    atualizatabela(novoItem);

    console.log(itens);
}

function atualizatabela(item)
{
    let htmlFinal = "<tr>";

    htmlFinal += "<td>" + item.nomeItem + "</td>";
    htmlFinal += "<td>" + item.quantidade + "</td>";
    htmlFinal += "<td>" + item.preco + "</td>";

    htmlFinal += "</tr>";

    // adicionar o conteudo de htmlFinal onde tem o id passado no jquery
    $('#tabelaitensId').append(htmlFinal);
}

function fecharCompra(){
    let htmlFinal = "Voce comprou: ";

    for(let i = 0; i < itens.length; i++){
        htmlFinal += itens[i].quantidade + " " + itens[i].nomeItem + " - ";
        soma += itens[i].quantidade * itens[i].preco;
    }

    htmlFinal += "Total: R$ " + soma;
    //  Adiciona 
    $('#fechamentoLabelId').text(htmlFinal);
}

btnAdicionarItem.onclick = adicionarItem;
btnFecharCompra.onclick = fecharCompra;