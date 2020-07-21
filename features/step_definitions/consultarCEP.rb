Given("uma base de dados") do
    $uri_base = "https://viacep.com.br/ws/01001000/json/"
end

When("realizar uma busca por um cep") do
    $response = HTTParty.get($uri_base)
    log "Insira um CEP para busca"
end

Then("a API deverá retornar o código do IBGE do endereço") do
    $cep = gets.chomp
    cepFromAPI = "#{$response['cep']}"
    if cepFromAPI == $cep
        log "Código IBGE do CEP buscado: #{$response['ibge']}"
    end
end

Then('deverá mostrar a mensagem que o CEP nao existe') do
    $cep = gets.chomp
    cepFromAPI = "#{$response['cep']}"
    if cepFromAPI != $cep
        log "O CEP buscado é inválido."
    end
end