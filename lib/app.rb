# password generator

# todos

# 1. how do we generate a password in ruby?

def ask_user_for_password_length
  puts "How many characters would your like your password to be?"
  print "> "
  gets.chomp.to_i
end

def generate_password
  password_length = ask_user_for_password_length
  password = ""
  password_length.times do 
    ascii_decimal = rand(33..126)
    password += ascii_decimal.chr
  end
  return password
end

puts generate_password

# 2. how will the user ask for a new password?
# 3. how will we store the passwords in memory?
# 4. how many characters will be in the password?