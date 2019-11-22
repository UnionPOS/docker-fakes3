FROM unionpos/ruby:2.5.1

ADD Gemfile /
ADD Gemfile.lock /

RUN bundle install

# EXPOSE 4569

RUN mkdir -p /opt/fakes3
WORKDIR /opt/fakes3

ENTRYPOINT ["bundle", "exec"]

CMD ["fakes3", "-r",  "/opt/fakes3", "-p",  "4569"]
