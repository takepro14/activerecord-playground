require './config'
require './db/migrate/001_create_users'
require './db/migrate/002_create_posts'
require './db/migrate/003_create_comments'
require './models/user'
require './models/post'
require './models/comment'

# ---
# Migrate tables
# ---

[User, Post, Comment].each do |model|
  table_name = model.name.downcase
  migration_class = Object.const_get("Create#{model.name}s")

  migration_class.new.change unless model.table_exists?
end

# ---
# Seed data
# ---

Post.delete_all
User.delete_all
Comment.delete_all

(1..3).each do |i|
  user = User.create!(name: "User #{i}", email: "user#{i}@example.com")

  (1..3).each do |j|
    post = user.posts.create!(
      title: "User #{i} - Post #{j}",
      content: "Content #{j}"
    )

    (1..3).each do |k|
      post.comments.create!(
        content: "Comment #{k}"
      )
    end
  end
end
