FROM ruby:2.4

RUN mkdir -p /code

WORKDIR /code

RUN gem install bundler -v 1.11.2 --no-ri --no-rdoc

ADD Gemfile* /code/
RUN bundle install