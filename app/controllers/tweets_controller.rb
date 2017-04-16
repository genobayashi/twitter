class TweetsController < ApplicationController

  before_action :move_to_top_index

  def index
    @tweets = Tweet.order("created_at DESC").includes(:user)
    @tweet = Tweet.new
    @user = User.order("RAND()").where.not(id: current_user.id).limit(3)
  end

  def create
    Tweet.create(image: tweet_params[:image], body: tweet_params[:body], user_id: current_user.id)
    redirect_to tweets_path
  end

  private
  def tweet_params
    params.require(:tweet).permit(:body, :image)
  end

  def move_to_top_index
    redirect_to top_index_path unless user_signed_in?
  end
end
