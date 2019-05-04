class BookMailer < ApplicationMailer
  def new_book_email
    @user = params[:user]
    mail(to: @user.email, subject: 'User was edited')
  end

end
