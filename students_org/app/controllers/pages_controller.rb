class PagesController < ApplicationController
  before_action :must_login, only: [:show]
  def new
  end

  def show
  end

  def signUp
  end

  def create
    @user = User.new(user_parms)

    if @user.save

      redirect_to(session_new_path)
      flash[:notice]="User Added Successfully"
    else render('signUp')
    end

  end

  def user_parms
    params.require(:user).permit(:address,:name,:phno,:postal_code,:email,:WhoYou_name,:terms_of_service)
  end
end
