class CuisinesController < ApplicationController
  authorize_resource
  def index
  @cuisines = Cuisine.all.order("created_at ASC")
end

def create
  @cuisine = Cuisine.new(cuisine_params)
  if @cuisine.save
      redirect_to @cuisine
    else
      render 'new'
    end
end

def edit
  @cuisine = Cuisine.find(params[:id])
end

def update
    @cuisine = Cuisine.find(params[:id])

    if @cuisine.update(cuisine_params)
      redirect_to cuisines_path, info: "Cuisine updated !!"
    else
      render 'edit'
    end
end

def new 
  @cuisine = Cuisine.new
end

def show
  @cuisine = Cuisine.find(params[:id])
end

def destroy
  @cuisine = Cuisine.find(params[:id])
  @cuisine.destroy

  redirect_to cuisines_path, danger: "Cuisine deleted !!"
  end


private
  def cuisine_params
    params.permit(:cuisine_type)
  end

end
