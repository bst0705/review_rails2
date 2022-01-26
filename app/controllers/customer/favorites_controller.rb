class Customer::FavoritesController < ApplicationController
  def create
    tweet = Tweet.find(params[:tweet_id])
    favorite = current_customer.favorites.new(tweet_id: tweet.id)
    favorite.save
    redirect_to tweet_path(tweet)
  end

  def destroy
    tweet = Tweet.find(params[:tweet_id])
    favorite = current_customer.favorites.find_by(tweet_id: tweet.id)
    favorite.destroy
    redirect_to tweet_path(tweet)
  end
end
