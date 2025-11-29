# ActiveRecord playground

## Setup

```sh
docker compose build
docker compose run --rm app bundle install
docker compose run --rm app ruby setup.rb
```

## Run

```sh
docker compose run --rm app ruby main.rb
```
