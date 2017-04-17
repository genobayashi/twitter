class TweetsController < ApplicationController

  before_action :move_to_top_index

  def index
    @tweets = Tweet.order("created_at DESC").includes(:user)
    @tweet = Tweet.new
    @user = User.order("RAND()").where.not(id: current_user.id).limit(3)
  end

  def create
    Tweet.create(tweet_params)
    redirect_to tweets_path
  end

  private
  def tweet_params
    params.require(:tweet).permit(:body, :image).merge(user_id: current_user.id)
  end

  def move_to_top_index
    redirect_to top_index_path unless user_signed_in?
  end
end
