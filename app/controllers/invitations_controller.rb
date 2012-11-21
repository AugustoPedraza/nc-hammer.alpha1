class InvitationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.company               = current_user.company
    @user.password              = '123456'
    @user.password_confirmation = '123456'
    @user.email                 = params[:user][:email]
    
    @user.save
  end
end