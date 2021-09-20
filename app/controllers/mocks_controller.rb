class MocksController < InheritedResources::Base

  private

    def mock_params
      params.require(:mock).permit(:name, :description, :url, :project_id, :requirement_id)
    end
end

