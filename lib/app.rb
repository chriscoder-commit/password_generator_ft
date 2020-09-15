# password generator

# todos

# 1. how do we generate a password in ruby?
# i want all passwords to be 10 characters in length

password = ""
10.times do 
  ascii_decimal = rand(33..126)
  password = password + ascii_decimal.chr
end

puts password

# 2. how will the user ask for a new password?
# 3. how will we store the passwords in memory?
# 4. how many characters will be in the password?