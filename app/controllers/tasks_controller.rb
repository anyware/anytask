class TasksController < ResourceController::Base
  before_filter :require_user

end
