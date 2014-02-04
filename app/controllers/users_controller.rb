class UsersController < ApplicationController
  respond_to  :json
  def index
   @users = User.order('email ASC').all
   respond_with @users
  end
  def show
    @user = User.find(params[:id])
    @projects = @user.projects
    respond_with @user,@projects
  end
end
