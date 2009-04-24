class TasksController < ResourceController::Base
  belongs_to :user
  before_filter :require_user

end
