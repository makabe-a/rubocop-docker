FROM ruby:alpine

# hadolint ignore=DL3028
RUN gem install \
      rubocop \
      rubocop-performance \
      rubocop-rails \
      rubocop-rspec

WORKDIR /app

ENTRYPOINT ["rubocop"]
