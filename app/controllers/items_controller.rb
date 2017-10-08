class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @user = User
    @item.user = current_user

    if @item.save
      flash[:notice] = "Item was saved."
      redirect_to users_show_path
    else
      flash.now[:alert] = "There was an error saving this item. Please try again."
      render :new
    end
  end

  def destroy
     @item = Item.find(params[:id])

     if @item.destroy
       redirect_to users_show_path
     else
       flash.now[:alert] = "There was an error deleting the item."
       render :show
     end
   end

  def item_params
     params.require(:item).permit(:name, :user)
  end
end
