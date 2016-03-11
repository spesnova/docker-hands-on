FROM ruby:2.3.0-alpine

COPY .  /app
WORKDIR /app

RUN bundle install

EXPOSE 4567
CMD ["bundle", "exec", "ruby", "app.rb"]
