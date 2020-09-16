require_relative "menu"
require_relative "password"

# database of passwords
password_database = []

loop do 
  case user_selection
  when 1 
    generate_password(password_database)
  when 2 
    exit
  else
    puts "Wrong user input"
    puts "Please type a 1 or a 2"
  end
end
