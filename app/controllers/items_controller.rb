class ItemsController < ApplicationController

before_action :authenticate_user!, except: [:index, :show]

  def index
    @items = Item.all
    # @cotegories = Item.categories
  end

  def show
    @item = Item.find(params[:id])
    @comment = Comment.new
  end

  def new
    @item = Item.new
    @user = current_user
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    @item.save
    redirect_to item_path(id: @item.id)
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to items_path
  end

  private
  def item_params
    params.require(:item).permit(:user_id, :title, :text, :tag_list)
  end

end
