require "groq"
require "tts"
#require "OS.rb"


#eventually will be changed to an env var
GROQ_API_KEY = "Your API KEY"


#configure api key and LLM model
Groq.configure do |config|
  config.api_key = GROQ_API_KEY
  config.model_id = "llama-3.1-70b-versatile"
end
client = Groq::Client.new

#test chat, replace later with the text file from VTT
client.chat("why is the sky blue?") do |content|
#filter only message content
  ttseng = content
end

#TTS Engine
#cant test this yet, need to get local instance setup first
def say(word)
  s = "#{word}"
  repeatTimes = 1
  s.play("en", repeatTimes)
  puts
  puts "Successfully Said: #{word}"
end

say(ttseng)
