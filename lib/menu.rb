def user_selection
  menu
  gets.chomp.to_i
end

def menu
  puts 'Welcome to the password generator!'
  puts 'What would you like to do? (type 1 or 2)'
  puts '1. Generate new password'
  puts '2. Exit'
  print '> '
end
