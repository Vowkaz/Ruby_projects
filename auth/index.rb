users = [
  { username: "vowkaz", password: "1234" },
  { username: "jabs", password: "4321" },
  { username: "miguelito", password: "3412" },
  { username: "dione", password: "2341" }
]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  "not correct credentials"
end

well = "Welcome to the jungle"
puts well
well.length.times { print "-" }
puts
puts "this program will take your input and authfi"
puts "If password is wrong, will get rejected"
well.length.times { print "-" }
puts
while true
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  auth = auth_user(username, password, users)
  puts auth

  puts "press 'N' to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
end
