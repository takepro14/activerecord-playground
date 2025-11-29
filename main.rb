require './config'
require './models/user'
require './models/post'
require './models/comment'
require 'pry'
require 'pry-byebug'

# ---
# 1. Run script:
# ---

def main
  binding.pry
  User.eager_load(posts: :comments)
end

main

# ---
# 2. Start pry session:
# ---

# Pry.start
