FROM ruby:2.3.1

MAINTAINER Hirofumi Wakasugi https://github.com/5t111111

ENV USER ruboty
ENV PROJECT_ROOT /ruboty

RUN adduser --gecos "$USER" --disabled-password --home $PROJECT_ROOT $USER

WORKDIR $PROJECT_ROOT

ADD Gemfile $PROJECT_ROOT
ADD Gemfile.lock $PROJECT_ROOT
RUN bundle install

ADD . $PROJECT_ROOT

RUN chown ruboty:ruboty -R $PROJECT_ROOT

USER $USER

CMD ["ruboty", "--dotenv"]
