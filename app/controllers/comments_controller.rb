class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    @item = Item.find(params[:item_id])
  end
  def new
    @item = Item.find(params[:item_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)

    @item = Item.find(params[:item_id])

    @comment.items_id = @item.id

    @comment.save
    redirect_to item_comments_path(@item)

  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
