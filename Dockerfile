FROM ruby:3.1.2

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs default-mysql-client

# Set working directory
WORKDIR /app

# Add Gemfile and install gems
COPY Gemfile Gemfile.lock* ./
RUN bundle install

# Copy the application code
COPY . .

# Add a script to be executed every time the container starts
COPY bin/docker-entrypoint /usr/bin/
RUN chmod +x /usr/bin/docker-entrypoint
ENTRYPOINT ["docker-entrypoint"]

# Configure the main process to run when running the image
EXPOSE 3001
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3001"]

