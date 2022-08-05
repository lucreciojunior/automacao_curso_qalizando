# language: pt
    
Funcionalidade: Pesquisar Funcionarios
    Para averiguar informaçoes
    O usuario do sistema
    Deseja poder consultar informaçoes dos funcionarios

    @cenario_um
    Cenario: Buscar informaçoes de funcionario
        Dado que o usuario consulte informcoes de funcionario
        Quando ele realiza a pesquisa
        Entao uma lista de funcionarios deve retorna

    @cenario_dois
    Cenario: Cadastra funcionario
        Dado que o usuario cadastre um novo funcionario
        Quando ele enviar as informaçoes do funcionario
        Entao esse funcionario sera cadastrado

    @cenario_tres
    Cenario: Altera informaçoes cadastrais
        Dado que o usuario altera uma informaçao de funcionario
        Quando ele envia as novas informaçoes 
        Entao as informaçoes serao alteradas

    @cenario_quatro
    Cenario: Deletar cadastro de funcionario
        Dado que usuario queira deletar um funcionario
        Quando ele enviar a identificacao unica
        Entao esse funcionario sera deletado do sistema
