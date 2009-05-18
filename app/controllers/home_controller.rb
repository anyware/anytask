class HomeController < ApplicationController
  before_filter :require_user
  layout 'home'
  
  def index
    @tasks = @current_user.tasks
  end
end
