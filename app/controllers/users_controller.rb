class UsersController < ApplicationController
  respond_to  :json, :html
  def index
   @users = User.order('email ASC').all
   respond_to do |format|
     format.html
     format.json { render json: @users }
   end
  end
  def show
    @user = User.find(params[:id])
    @projects = @user.projects
    respond_to do |format|
      format.html
      format.json { render json: {user: @user, projects: @user.projects} }
    end
  end
end
