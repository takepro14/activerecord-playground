require_relative "config"
require_relative "user"

user = User.create(name: "Test User", email: "test@example.com")
puts "Created user: #{user.name}, #{user.email}"

User.all.each do |user|
  puts "User: #{user.name}, #{user.email}"
end

