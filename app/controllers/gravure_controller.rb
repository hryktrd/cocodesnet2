class GravureController < ApplicationController
  def show_all
    @casts = Cast.all
  end

  def show_by_loc
    max_lat = params[:lat].to_f + 50
    min_lat = params[:lat].to_f - 50
    max_lng = params[:lng].to_f + 100
    min_lng = params[:lng].to_f - 100
    @shop_infos = ShopInfo.where('lat <= ? AND lat >= ? AND lng <= ? AND lng >= ?',
      max_lat, min_lat, max_lng, min_lng)
  end
  private
    def gravure_params
      params.require(:gravure).permit(:lat, :lng)
    end
end
