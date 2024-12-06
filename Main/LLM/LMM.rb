require "groq"
require "json"
GROQ_API_KEY = "your api key here"


#these are irrelivant and just for initial tests
#client = Groq::Client.new # uses ENV["GROQ_API_KEY"] and "llama-3.1-8b-instant"
#client = Groq::Client.new(api_key: Groq.configuration.api_key, model_id: "llama-3.1-8b-instant")

#configure api key and LLM model
Groq.configure do |config|
  config.api_key = GROQ_API_KEY
  config.model_id = "llama-3.1-70b-versatile"
end
client = Groq::Client.new

#test chate, replace later with the text file from VTT
client.chat("What is the best way to put an api key in a ruby program?") do |content|
print content
end