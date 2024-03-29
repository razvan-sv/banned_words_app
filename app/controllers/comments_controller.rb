class CommentsController < ApplicationController

  def index
    @comments     = Comment.order_by(:created_at, :desc)
    @banned_words = BannedWords.list
    @comment      = Comment.new
  end

  def create
    Comment.create(params[:comment])
    redirect_to root_path
  end
  
  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to root_path
  end
end
