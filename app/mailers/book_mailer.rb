class BookMailer < ApplicationMailer
  def update_provider_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Provider Information at COMAPNY NAME was edited')
  end

  def new_provider_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Welcome to COMAPNY NAME')
  end
end
