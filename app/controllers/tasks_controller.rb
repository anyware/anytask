class TasksController < ResourceController::Base
  #before_filter :activate_authlogic
  before_filter :require_user
end
