class TasksController < ResourceController::Base
  belongs_to :user
  before_filter :require_user
  
  protected
      def parent_object
        @current_user
      end

end
