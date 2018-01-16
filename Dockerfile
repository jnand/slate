FROM ubuntu
MAINTAINER jnand@users.noreply.github.com

RUN apt-get update
RUN apt-get install -yq ruby ruby-dev build-essential libxml2-dev libxslt-dev zlib1g-dev
RUN gem install --no-ri --no-rdoc bundler
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN cd /app; bundle install
ADD / /app
EXPOSE 4567
EXPOSE 35729
WORKDIR /app

ONBUILD RUN rm -fr /app/source
CMD ["middleman", "server"]