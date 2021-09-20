class IssuesController < InheritedResources::Base

  private

    def issue_params
      params.require(:issue).permit(:name, :description, :created_on, :task_id, :user_id, :user_id, :status, :worklog)
    end
end

