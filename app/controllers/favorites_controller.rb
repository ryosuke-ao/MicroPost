class FavoritesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.fav(micropost)
    flash[:success] = 'メッセをお気に入りしました'
    redirect_to :back
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfav(micropost)
    flash[:success] = 'メッセのお気に入りを解除しました。'
    redirect_to :back
  end
end
