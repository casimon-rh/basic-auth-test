FROM registry.redhat.io/rhel8/ruby-26:latest
RUN gem install bundler
COPY Gemfile* ./
RUN bundle install --path vendor/bundle
COPY server.rb ./
EXPOSE 4567
CMD [ "bundle", "exec", "ruby", "server.rb", "-o", "0.0.0.0" ]