class ItemsController < ApplicationController

	def new
		@item = Item.new
	end

	def index
 	 	@item = Item.all
	end

	def create
	  @item = Item.new(params[:item].permit(:title, :description, :type))
	 
	  if @item.save
	    redirect_to root_path
	  else
	    render 'new'
	  end
	end

	def edit

		@item = Item.find(params[:id])

	end

	def show

		@item = Item.find(params[:id])

	end

	def destroy

	  @item = Item.find(params[:id])
 	  @item.destroy
 
  	redirect_to items_path
  	end

	 def update
	  @item = Item.find(params[:id])
	 
	  if @item.update(params[:item].permit(:title, :description, :type))
	    redirect_to @item
	  else
	    render 'edit'
	  end
	end

	def search

	end
	
end
