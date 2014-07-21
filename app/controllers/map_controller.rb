class MapController < ApplicationController
  def index
  end



  private
    def map_params
      params.require(:map).permit(:lat, :lng)
    end

end
