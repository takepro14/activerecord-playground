# ActiveRecord playground

## Getting started

```sh
docker compose build
docker compose run app bash
bundle install
bundle exec ruby -e "require './config'; require './db/migrate/001_create_users'; CreateUsers.new.change"
docker compose run app ruby script.rb
docker compose run app ruby console.rb
```
