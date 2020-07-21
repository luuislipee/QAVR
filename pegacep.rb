require "httparty"
response = HTTParty.get("https://viacep.com.br/ws/01001000/json/")
# puts "response code :#{response.code}"
# puts "response message :#{response.message}"
# puts "response headers :#{response.headers}"
puts "response body :#{response.body}"
