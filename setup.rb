require './config'
require './db/migrate/001_create_users'
require './db/migrate/002_create_posts'
require './models/user'
require './models/post'

# ---
# Migrate tables
# ---

if !User.table_exists?
  CreateUsers.new.change
end

if !Post.table_exists?
  CreatePosts.new.change
end

# ---
# Seed data
# ---

Post.delete_all
User.delete_all

(1..3).each do |i|
  user = User.create!(name: "User #{i}", email: "user#{i}@example.com")

  (1..3).each do |j|
    user.posts.create!(
      title: "User #{i} - Post #{j}",
      content: "Content #{j}"
    )
  end
end
