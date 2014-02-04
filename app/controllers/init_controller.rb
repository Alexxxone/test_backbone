class InitController < ApplicationController
  # GET /projects
  # GET /projects.json
  before_filter :authenticate_user!
  respond_to  :json, :html
  def index
    @init = current_user
    respond_with @init
  end

end
