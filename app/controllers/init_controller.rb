class InitController < ApplicationController
  # GET /projects
  # GET /projects.json
  before_filter :authenticate_user!

  def index
    @init = current_user
    render json: @init
  end

end
