class TweetsController < ApplicationController

  def index
    @tweets = Tweet.order("created_at DESC").includes(:user)
    @tweet = Tweet.new
  end

  def create
    Tweet.create(image: tweet_params[:image], body: tweet_params[:body], user_id: current_user.id)
    redirect_to tweets_path
  end

  private
  def tweet_params
    params.require(:tweet).permit(:body, :image)
  end
end
