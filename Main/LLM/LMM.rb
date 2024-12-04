#require 'net/http'
#require 'uri'
#require 'json'
require 'google/cloud/language/v2/language_client.h'
require '<iostream>'





















# Get a better solution.... I shouldnt put API keys in clear text
#GAPIKey = ""


# commenting out this to test the google api gem 
=begin

uri = URI.parse("https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=" + GAPIKey)
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
data = (response.body)

p data
=end