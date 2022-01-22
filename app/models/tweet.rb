class Tweet < ApplicationRecord
  belongs_to :customer
  attachment :tweet_image
end
