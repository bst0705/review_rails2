class Customer::TweetsController < ApplicationController
  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.customer_id = current_customer.id
    @tweet.save
    redirect_to tweets_path
  end

  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
    @tweet_comment = Comment.new
  end

  def destroy
  end
  
  private

  def tweet_params
    params.require(:tweet).permit(:title, :tweet_image, :body)
  end
end
