class TopController < ApplicationController

  before_action :move_to_tweets_index

  def index
  end

  private
  def move_to_tweets_index
    redirect_to tweets_path if user_signed_in?
  end
end
