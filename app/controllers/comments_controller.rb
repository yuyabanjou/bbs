class CommentsController < ApplicationController

	def create
    item = Item.find(params[:item_id])
    comment = Comment.new(comment_params)
    comment.user_id = current_user.id
    comment.item_id = item.id
    comment.save
    redirect_to item_path(item)
	end

private
	def comment_params
	    params.require(:comment).permit(:user_id, :item_id, :text)
	end
end
