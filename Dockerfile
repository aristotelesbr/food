FROM ruby:3.3.0

COPY . /app

WORKDIR /app

RUN bundle install

EXPOSE 3000

CMD ["bundle", "exec", "puma", "config.ru", "--port", "3000"]