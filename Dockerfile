FROM ruby:3.0

# See - https://cloud.google.com/ruby/docs/reference
RUN gem install google-cloud-monitoring
RUN gem install google-cloud-storage
RUN gem install google-cloud-pubsub
RUN gem install google-cloud-secret_manager
RUN gem install google-cloud-memcache

ENV PATH $PATH:/usr/local/gcloud/google-cloud-sdk/bin
RUN curl -sSL https://sdk.cloud.google.com | bash
