class LikesController < ApplicationController

  def create
    like = Like.new
    like.dish_id = params[:dish_id]
    like.user_id = session[:user_id]
    like.save
    redirect_to '/dishes'
  end
end