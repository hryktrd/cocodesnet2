class ShopInfosController < ApplicationController
  before_action :set_shop_info, only: [:show, :edit, :update, :destroy, :shop_photo]
  # GET /shop_infos
  # GET /shop_infos.json
  def index
    @shop_infos = ShopInfo.all
  end

  # GET /shop_infos/1
  # GET /shop_infos/1.json
  def show
  end

  # GET /shop_photo
  def shop_photo
    send_data @shop_info.photo, type: @shop_info.phototype, disposition: :inline
  end

  # GET /shop_infos/new
  def new
    @shop_info = ShopInfo.new
  end

  # GET /shop_infos/1/edit
  def edit
  end

  # POST /shop_infos
  # POST /shop_infos.json
  def create
    @shop_info = ShopInfo.new(shop_info_params)

    respond_to do |format|
      if @shop_info.save
        format.html { redirect_to @shop_info, notice: 'Shop info was successfully created.' }
        format.json { render :show, status: :created, location: @shop_info }
      else
        format.html { render :new }
        format.json { render json: @shop_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_infos/1
  # PATCH/PUT /shop_infos/1.json
  def update
    respond_to do |format|
      if @shop_info.update(shop_info_params)
        format.html { redirect_to @shop_info, notice: 'Shop info was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop_info }
      else
        format.html { render :edit }
        format.json { render json: @shop_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_infos/1
  # DELETE /shop_infos/1.json
  def destroy
    @shop_info.destroy
    respond_to do |format|
      format.html { redirect_to shop_infos_url, notice: 'Shop info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_info
      @shop_info = ShopInfo.find(params[:id])
      @shop_category = ShopCategory.find(@shop_info.shop_category_id)
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_info_params
      params.require(:shop_info).permit(:name, :address, :url, :lat, :lng, :upfile, :tel, :shop_category_id)
    end
end
