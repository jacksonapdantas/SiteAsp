/**Auto = Jackson Dantas **/

/**Lógica para gerar CPF**/

//Função Principal
var gerarCPF = function () {
    var pegaNumeros = "";
    let quantidade_cpf = document.getElementById("quantidade_cpf").value;
    if (quantidade_cpf <= 0 || isNaN(quantidade_cpf))  {
        alert("Digite uma quantidade válida!");
    } else {
        for (var i = 0; i < quantidade_cpf; i++) {
            pegaNumeros += geraNumeros("cpf") + "\n";
        }
        document.getElementById("textarea").innerText = pegaNumeros;
    }

}


//Função gera 1º digito do CPF//
var geraPrimeroDigito = function (digito1) {
    let numero = 0;
    let resto;
    for (var i = 0; i < 9; i++) {
        numero += digito1[i] * (10 - i);
    }
    resto = (numero % 11);
    numero = parseInt(numero / 11);

    if (resto < 2) {
        return 0;
    } else {
        return (11 - resto);
    }
}

//Função gera 2º digito do CPF//
var geraSegundoDigito = function (digito2) {
    let numero2 = 0;
    let resto2;

    for (var i = 0; i < 10; i++) {
        numero2 += digito2[i] * (11 - i);
    }

    resto2 = (numero2 % 11);
    numero2 = parseInt(numero2 / 11);

    if (resto2 < 2) {
        return 0;
    } else {
        return (11 - resto2);
    }
}

/** Lógica gerar CNPJ**/
//Função Principal
var geraCNPJ = function () {
    var pegaNumeros = "";
    let quantidade_cnpj = document.getElementById("quantidade_cnpj").value;

    if (quantidade_cnpj <= 0 || isNaN(quantidade_cnpj)) {
        alert("Digite uma quantidade válida!");
    } else {
        for (var i = 0; i < quantidade_cnpj; i++) {
            pegaNumeros += geraNumeros("cnpj") + "\n";
        }
        document.getElementById("textarea").innerText = pegaNumeros;
    }

}

//Função gera o 2º digito CNPJ//
var geraPrimeroDigitoCnpj = function (digito1) {
    let numero = 0;
    let resto;

    for (var i = 0; i < 12; i++) {
        if (i < 4) {
            numero += digito1[i] * (5 - i);
        } else {
            numero += digito1[i] * (13 - i);
        }
    }

    resto = (numero % 11);
    numero = parseInt(numero / 11);

    if (resto < 2) {
        return 0;
    } else {
        return (11 - resto);
    }
}

//Função gera 2º digito do CNPJ//
var geraSegundoDigitoCnpj = function (digito1) {
    let numero = 0;
    let resto;

    for (var i = 0; i < 13; i++) {
        if (i < 5) {
            numero += digito1[i] * (6 - i);
        } else {
            numero += digito1[i] * (14 - i);
        }
    }
    resto = (numero % 11);
    numero = parseInt(numero / 11);

    if (resto < 2) {
        return 0;
    } else {
        return (11 - resto);
    }
}

/**Funções gerais */
//Função que gera o documento CPF ou CNPJ//
var geraNumeros = function (doc) {
    var numeroDoc = "";
    //Para cpf
    if (doc == "cpf") {
        for (var i = 0; i < 9; i++) {
            numeroDoc += parseInt(Math.random() * 10);
        }
        numeroDoc += geraPrimeroDigito(numeroDoc);
        numeroDoc += geraSegundoDigito(numeroDoc);
        //ou para cnpj
    } else if (doc == "cnpj") {
        for (var i = 0; i < 12; i++) {
            numeroDoc += parseInt(Math.random() * 10);
        }
        numeroDoc += geraPrimeroDigitoCnpj(numeroDoc);
        numeroDoc += geraSegundoDigitoCnpj(numeroDoc);
    }



    return numeroDoc;
}

//Função Copiar conteudo. OBS: Não funciona em todos o Browers//

var copiar_texto = function () {
    if (window.clipboardData) {
        window.clipboardData.setData("Text", document.getElementById("textarea").value);
        document.getElementById("textarea").select();
        alert("copiado");
    } else {
        alert("Navegador sem suporte. Favor pare de ser preguiçoso e use CTRL + C");
    }
}