# methods

def ask_user_for_password_length
  puts "How many characters would your like your password to be?"
  print "> "
  gets.chomp.to_i
end

def user_selection
  menu 
  gets.chomp.to_i
end

def menu 
  puts "\nWelcome to the password generator!"
  puts "What would you like to do? (type 1 or 2)"
  puts "1. Generate new password"
  puts "2. Exit"
  print "> "
end

def view_passwords(password_database)
  puts ""
  password_database.each_with_index do |password, index|
    puts "#{index + 1}. #{password}"
  end
end

def store_password(password, password_database)
  # push the password into my array that will store passwords
  password_database << password
  # view all of the passwords
  view_passwords(password_database)
end 

def generate_password(password_database)
  password_length = ask_user_for_password_length
  password = ""
  password_length.times do 
    ascii_decimal = rand(33..126)
    password += ascii_decimal.chr
  end
  store_password(password, password_database)
end

# method calling
# loop logic

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

# todos
# 1. how do we generate a password in ruby? ✅
# 2. how many characters will be in the password? ✅
# 3. how will the user ask for a new password? ✅
# 4. how will we store the passwords in memory? ✅