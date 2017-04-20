class CategoriesController < ApplicationController

  def new
    @tweets = Tweet.order("created_at DESC").includes(:user)
    @tweet = Tweet.new
    @user = User.order("RAND()").where.not(id: current_user).where.not(id: current_user.following).limit(3)
    @category = Category.new
  end

  def create
    Category.create(category_params)
    redirect_to controller: 'tweets', action: 'index'
  end

  private
  def category_params
    params.require(:category).permit(:name, :user_id)
  end
end
