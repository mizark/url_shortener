class Link < ActiveRecord::Base
  attr_accessible :long_url, :short_url

  validates :long_url, presence: true
  validates :short_url, presence: true
  #validates :http_status, presence: true
end
