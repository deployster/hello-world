FROM yammer/ruby:2.2.0
MAINTAINER Brian Morton "brian@mmm.hm"

# Add and install gem dependencies
ADD Gemfile       /app/Gemfile
ADD Gemfile.lock  /app/Gemfile.lock
RUN bash -l -c "cd /app && bundle"

ADD . /app

WORKDIR /app
EXPOSE 3000
ENTRYPOINT ["/app/env"]
CMD ["bundle exec ruby /app/server.rb"]
