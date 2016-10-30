class UsersController < ApplicationController
  def new
    @signup_form = SignupForm.new
  end

  def create
    @signup_form = SignupForm.new
    if @signup_form.submit(params[:user])
      user = @signup_form.user
      session[:user_id] = user.id
      redirect_to user, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  def show
    @user = current_user
  end
end
