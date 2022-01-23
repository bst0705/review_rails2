class Tweet < ApplicationRecord
  belongs_to :customer
  attachment :tweet_image
  has_many :tweet_comments, dependent: :destroy
end
class Tweet < ApplicationRecord
  belongs_to :customer
  attachment :tweet_image
  has_many :tweet_comments, dependent: :destroy
end
