class ItemsController < ApplicationController

	def new
		@item = Item.new
		@types = Type.all
	end

	def index
 	 	@item = Item.all
	end

	def create
	  @item = Item.new(params[:item].permit(:title, :description, :type_id))
	  
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
	 
	  if @item.update(params[:item].permit(:title, :description, :type_id))
	    redirect_to root_path
	  else
	    render 'edit'
	  end
	end

	def search
		@types = Type.all
		if(params[:condition] == "1")
		@found = Item.where(["title like ? or description like ? or type_id like ?", 
			"%#{params[:title]}%","%#{params[:description]}%","%#{params[:type_id]}%"]).to_a
		elsif (params[:condition] == "2")
		@found = Item.where(["title like ? and description like ? and type_id like ?", 
			"%#{params[:title]}%","%#{params[:description]}%","%#{params[:type_id]}%"]).to_a
		else
			@found = nil
		end


	end
	
end
