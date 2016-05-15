class Sheet < ApplicationRecord
  validates :url, presence: true
  validates :passphrase, presence: true
end
