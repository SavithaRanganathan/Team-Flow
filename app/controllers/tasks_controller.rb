class TasksController < InheritedResources::Base

  private

    def task_params
      params.require(:task).permit(:name, :description, :due_date, :requirement_id, :user_id, :user_id, :status, :worklog)
    end
end

