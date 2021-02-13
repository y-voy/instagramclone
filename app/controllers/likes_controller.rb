class LikesController < ApplicationController

  def create
    like = current_user.likes.create(picture_id: params[:picture_id])
    redirect_to pictures_url, notice: "#{like.picture.user.name}さんの投稿に「いいね」をしました"
  end

  def destroy
    like = current_user.likes.find_by(id: params[:id]).destroy
    redirect_to pictures_url, notice: "#{like.picture.user.name}さんの投稿の「いいね」を解除しました"
  end

end
