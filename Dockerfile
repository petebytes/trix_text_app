# using alpine for small image size
FROM ruby:3.1.3-alpine

# ARG default to production settings
# For development docker-compose file overrides ARGS

ARG RAILS_SERVE_STATIC_FILES=true
ENV RAILS_SERVE_STATIC_FILES ${RAILS_SERVE_STATIC_FILES}

ARG RAILS_ENV=production
ENV RAILS_ENV ${RAILS_ENV}

# reduce NPM install messages
ENV npm_config_loglevel warn

# allow installing when the main user is root
# ENV npm_config_unsafe_perm true

# environment variables
ENV RAILS_ROOT=/app/
ENV RAILS_ENV ${RAILS_ENV}
ENV RAILS_LOG_TO_STDOUT=true
ENV RAKE_ENV=$RAILS_ENV
ENV RACK_ENV=$RAILS_ENV
ENV BUNDLER_VER=2.3.14

# skip installing gem documentation
RUN mkdir -p /usr/local/etc \
  && { \
  echo 'install: --no-document'; \
  echo 'update: --no-document'; \
  } >> /usr/local/etc/gemrc

RUN apk add --update --no-cache \
  bash \
  build-base \
  curl \
  chromium \
  chromium-chromedriver \
  dcron \
  poppler-utils \
  ffmpeg \
  mupdf \
  git \
  g++ \
  graphicsmagick \
  libxml2-dev \
  libxslt-dev \
  make \
  python3 \
  postgresql-dev \
  postgresql-client \
  postgresql-libs \
  tzdata \
  libstdc++ \
  libuv \
  gmp-dev \
  vim \
  vips && \
  apk upgrade --available && \
  rm -rf /var/cache/apk/*

RUN if [[ "$RAILS_ENV" != "production" ]]; then \
  apk add --no-cache \
  chromium \
  ruby-dev \
  chromium-chromedriver && \
  apk upgrade --available && \
  rm -rf /var/cache/apk/*; fi

RUN mkdir -p $RAILS_ROOT
WORKDIR $RAILS_ROOT

# Install bundler
RUN if [[ "$RAILS_ENV" == "production" ]]; then \
  gem install bundler --no-document -v $BUNDLER_VER; \
  else gem install bundler -v $BUNDLER_VER; fi

# throw errors if Gemfile has been modified since Gemfile.lock
RUN if [[ "${RAILS_ENV}" == "production" ]]; then \
 bundle config --global frozen 1; fi

COPY Gemfile* $RAILS_ROOT

# bundle install development or production
RUN if [[ "${RAILS_ENV}" == "production" ]]; then \
  bundle config set without 'development test'; \
  bundle install -j 4 -r 3; \
  else bundle install -j 16 -r 3; fi

# Add project files
COPY . $RAILS_ROOT

# Start up
# ENTRYPOINT ["./docker-entrypoint.sh"]
# CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
