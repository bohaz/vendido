class Authentication::SessionsController < ApplicationController
  def new
  end
   
  def create
    @user = User.find_by(email: params[:login]) || User.find_by(username: params[:login])

    if @user&.authenticate(params[:password]) 
      redirect_to products_path, notice: t('.created')

    else
      redirect_to new_sessions_path, alert: t('.failed')
    end

  end

  # private

  # def user_params
  #  params.require(:user).permit(:email, :username, :password)
  # end
end