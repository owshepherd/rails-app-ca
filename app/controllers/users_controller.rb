class UsersController < ApplicationController
  authorize_resource
  
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all.order("created_at ASC")
    
  end

  def create
    @user = User.new(provider_params)
    if @user.save
      redirect_to @user
      else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to root_path, danger: "User deleted!"
  end

  def update
    @user = User.find(params[:id])

    if @user.update(provider_params)
       @users = current_user
       BookMailer.with(user: @users).update_provider_email.deliver_now
      redirect_to user_path(@user.id), info: "User updated !!"
    else
      render 'edit'
    end
end


  private
  def provider_params
    params.permit(:username, :firstname, :lastname, :dob, :uploaded_image)
  end

end
