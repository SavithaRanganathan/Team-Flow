class GoalsController < InheritedResources::Base

  private

    def goal_params
      params.require(:goal).permit(:name, :pageview, :newuser, :bouncerate, :achieved_pageview, :achieved_newuser, :achieved_bouncerate, :project_id, :requirement_id)
    end
end

