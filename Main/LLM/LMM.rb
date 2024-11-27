require 'net/http'
require 'uri'
require 'json'

uri = URI.parse("https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=GOOGLEAPIKEY")
request = Net::HTTP::Post.new(uri)
request.content_type = "application/json"
request.body = JSON.dump({
  "contents" => [
    {
      "parts" => [
        {
          "text" => "Write a story about a magic backpack."
        }
      ]
    }
  ]
})

req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
end

# response.code
# response.body
# response.body("text")
#response.json
data = (response.body)

p data("text")
