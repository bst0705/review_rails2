class Tweet < ApplicationRecord
  belongs_to :customer
  has_many :tweet_comments, dependent: :destroy
  attachment :tweet_image
end
