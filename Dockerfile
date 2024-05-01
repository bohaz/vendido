FROM ruby:3.1.0-alpine

RUN apk add --update --no-cache \
    git \
    bash \
    build-base \
    libxml2-dev \
    libxslt-dev \
    tzdata \
    openssl \
    postgresql-dev \
    libc6-compat

WORKDIR /app

COPY Gemfile Gemfile.lock ./  
RUN bundle install

COPY . .

ENTRYPOINT ["bin/rails"]    
CMD ["server", "-b", "0.0.0.0"]

EXPOSE 3000
