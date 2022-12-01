var database = require("../database/config");

function buscarDados() {

    instrucaoSql = ''

     
    if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `
        select min(nota) as 'minimo', round(avg(nota),2) as 'media', max(nota) as 'maxima', count(nota) as 'quantidade' from nota;
        
        `;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    buscarDados,
}
