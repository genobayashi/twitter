class FollowsController < ApplicationController
  def create
    Follow.create(create_params)
    redirect_to new_category_path
  end

  def destroy
    follow = Follow.find(params[:id])
    follow.destroy
    redirect_to controller: 'tweets', action: 'index'
  end

  private

  def create_params
    params.permit(:following_id).merge(follower_id: current_user.id)
  end

end
