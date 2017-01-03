FROM ruby:2.4.0
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /src

ADD ./src/Gemfile /src/Gemfile
ADD ./src/Gemfile.lock /src/Gemfile.lock

RUN bundle install
