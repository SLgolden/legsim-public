# 1. Start with a Ruby base image
FROM ruby:2.7.1

# 2. Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# 3. Set the working directory
WORKDIR /myapp

# 4. Copy the application code
COPY . /myapp

# 5. Bundle install
RUN bundle install


# 6. Expose the port
EXPOSE 3000

# 7. CMD to start the application
CMD ["rails", "server", "-b", "0.0.0.0"]
