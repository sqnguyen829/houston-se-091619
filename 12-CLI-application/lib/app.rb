# puts "What is your name?"
# s = gets.chomp
# puts s

require "tty-prompt"


$prompt = TTY::Prompt.new

def start
    puts "Welcome to the Ruby world!!"
    userdata
end


def userdata
    name = $prompt.ask('What is your name?', default: ENV['USER'])
    password = $prompt.mask("What is your password?")
    displayUserData(name,password)
end

# prompt.ask('What is your name?', default: ENV['USER'])

# ans = prompt.yes?('Do you like Ruby?')
# puts ans

# pwd = prompt.mask("What is your password?")
# puts pwd