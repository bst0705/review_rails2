class Tweet < ApplicationRecord
  attachment :tweet_image
  
  belongs_to :customer
  has_many :tweet_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def favorited_by?(customer)
    favorites.where(customer_id: customer.id).exists?
  end
end
