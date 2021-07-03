class PagesController < ApplicationController

 skip_before_action :authenticate_user!, only: [ :home ]
  before_action :set_user

  def home
  end

  def profile
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password)
  end

  def set_user
    @user = current_user
  end


end
