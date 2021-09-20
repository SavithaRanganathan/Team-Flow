class PlatformsController < InheritedResources::Base

  private

    def platform_params
      params.require(:platform).permit(:name)
    end
end

