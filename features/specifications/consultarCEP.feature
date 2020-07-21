@consultarCEP
Feature: Consultar os dados de um endereço a partir de um CEP
Como um usuário do sistema
Quero realizar uma consulta de endereço a partir de um CEP 
A fim de saber se o CEP é válido ou não

Scenario: Consultando CEP válido
    Given uma base de dados
    When realizar uma busca por um cep
    Then a API deverá retornar o código do IBGE do endereço 

Scenario: Consultando CEP inválido
    Given uma base de dados
    When realizar uma busca por um cep
    Then deverá mostrar a mensagem que o CEP nao existe