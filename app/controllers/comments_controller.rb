class CommentsController < ApplicationController

  before_action :set_comment, only: [:destroy]

  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @comment.destroy
    redirect_to pictures_path, notice:"削除しました！"
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :picture_id)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

end
