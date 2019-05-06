class ProvidersController < ApplicationController
  load_and_authorize_resource
  
  def show
    @provider = Provider.find(params[:id])
  end

  def index
    @providers = Provider.all.order("created_at ASC")
    
  end

  def create
    @provider = Provider.new(provider_params)
    if @provider.save
      redirect_to @provider
      else
      render 'new'
    end
  end
  
  def edit
    @provider = Provider.find(params[:id])
  end

  def destroy
    @provider = Provider.find(params[:id])
    @provider.destroy

    redirect_to root_path, danger: "Provider deleted!"
  end

  def update
    @provider = Provider.find(params[:id])

    if @provider.update(provider_params)
      redirect_to @provider, info: "Provider updated !!"
    else
      render 'edit'
    end
end


  private
  def provider_params
    params.permit(:username, :name, :city, :state, :postcode, :minimum_persons, :cost_per_head)
  end

end
