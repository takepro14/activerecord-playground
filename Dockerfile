FROM ruby:3.2-slim

WORKDIR /app
RUN apt-get update -qq && apt-get install -y build-essential
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
CMD ["ruby", "main.rb"]
