FROM ruby:3.2.1-alpine 
RUN apk --update --no-cache add build-base nodejs postgresql-dev tzdata
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . .

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
