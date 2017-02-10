FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.3

RUN gem install dummy_log_generator --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["dummy_log_generator"]
CMD ["--help"]
