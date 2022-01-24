class TweetComment < ApplicationRecord
  belongs_to :tweet
  belongs_to :customer
end
