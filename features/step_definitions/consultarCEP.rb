Given("uma base de dados") do
    $uri_base = "https://viacep.com.br/ws/01001000/json/"
    log "Insira um CEP para busca: "
end

When("realizar uma busca por um cep") do
    $cep = gets.chomp
    $response = HTTParty.get($uri_base, query: {:cep => $cep})
end

Then("a API deverá retornar o código do IBGE do endereço") do
    cepFromAPI = "#{$response['cep']}"
    if cepFromAPI == $cep
        log "Código IBGE do CEP buscado: #{$response['ibge']}"
    end
end

Then('deverá mostrar a mensagem que o CEP nao existe') do
    cepFromAPI = "#{$response['cep']}"
    if cepFromAPI != $cep
        log "O CEP buscado é inválido."
    end
end