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
    "https://cdn.ampproject.org/c/" + onda_url(self).gsub(/http[s]{0,1}:\/\//, { 'http://' => '', 'https://' => 's/'})
  end
end
