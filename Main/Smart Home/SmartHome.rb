require "ruby_speech"
require 'google/cloud/speech'
require_relative '../LLM/LMM.rb' # Assuming LMM.rb is in the LLM directory

#initialize the google speech client
speech = Google::Cloud::Speech.speech

#listen for the wake word
def listen_for_wake_word
  puts "Listening for wake word 'Clara'..."
  # Implement microphone listening logic here
  # For simplicity, we'll simulate with a fixed input
  input = gets.chomp
  if input.downcase.include?("clara")
    puts "Wake word detected!"
    return true
  end
  false
end

# Function to decide action based on context
def decide_action(input)
  if input.include?("search")
    perform_google_search(input)
  else
    perform_llm_task(input)
  end
end

# Function to perform a Google search
def perform_google_search(query)
  puts "Performing Google search for: #{query}"
  # Implement Google Search API logic here
end

# Function to perform LLM task
def perform_llm_task(query)
  puts "Performing LLM task for: #{query}"
  client = Groq::Client.new
  client.chat(query) do |content|
    ttseng = content
    say(ttseng)
  end
end
# TTS Engine
def say(word)
  s = "#{word}"
  repeatTimes = 1
  s.play("en", repeatTimes)
  puts "Successfully Said: #{word}"
end

# Main loop
loop do
  if listen_for_wake_word
    puts "How can I help you Ma'am:"
    query = gets.chomp
    decide_action(query)
  end
end