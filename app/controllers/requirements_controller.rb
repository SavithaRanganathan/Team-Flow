class RequirementsController < InheritedResources::Base

  private

    def requirement_params
      params.require(:requirement).permit(:title, :Project_requirements, :published_at, :user_id)
    end
end

