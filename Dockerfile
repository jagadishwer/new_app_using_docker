FROM ruby:2.4.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /new_app_using_docker
WORKDIR /new_app_using_docker
ADD Gemfile /new_app_using_docker/Gemfile
ADD Gemfile.lock /new_app_using_docker/Gemfile.lock
RUN bundle install
ADD . /new_app_using_docker