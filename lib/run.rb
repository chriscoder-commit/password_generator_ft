# gems
require 'colorize'
require 'byebug'

# methods
require_relative 'menu'
require_relative 'password'

# database of passwords
password_database = []

# app loop
loop do
  case user_selection
  when 1
    generate_password(password_database)
  when 2
    exit
  else
    puts 'Wrong user input'
    puts 'Please type a 1 or a 2'
  end
end
