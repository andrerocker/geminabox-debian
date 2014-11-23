FROM andrerocker/wheezy
MAINTAINER Platform Team 0.1

RUN echo "deb http://pacotes.linux.locaweb.com.br/ruby_wheezy/debian ruby2x main" >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y --force-yes debhelper ruby bundler
