require "groq"

Groq.configuration.api_key = ""
client = Groq::Client.new # uses ENV["GROQ_API_KEY"] and "llama3-groq-70b-8192-tool-use-preview"
client = Groq::Client.new(api_key: "Groq.configuration.api_key", model_id: "llama3-8b-8192")

Groq.configure do |config|
  config.api_key = "Groq.configuration.api_key"
  config.model_id = "llama3-8b-8192"
  

  client = Groq::Client.new
  client.chat("Hello, world!")


end
#Groq gem github page https://github.com/drnic/groq-ruby