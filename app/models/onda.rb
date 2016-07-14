class Onda < ApplicationRecord
  include Rails.application.routes.url_helpers

  def default_url_options
    { host: "we.stbound.com" }
  end
  def tweet_text
    [
      tweet,
      published_url
    ].join(" ")
  end

  def published_url
    "https://cdn.ampproject.org/c/" + random_onda_url(self, rand(10e6)).gsub(/http[s]{0,1}:\/\//, { 'http://' => '', 'https://' => 's/'})
  end
end
