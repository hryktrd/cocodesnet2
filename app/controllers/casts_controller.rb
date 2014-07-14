class CastsController < ApplicationController
  before_action :set_cast, only: [:show, :edit, :update, :destroy]
  before_filter :load_shop_info

  # GET /casts
  # GET /casts.json
  def index
    @casts = Cast.all
  end

  # GET /casts/1
  # GET /casts/1.json
  def show
  end

  # GET /casts/new
  def new
    @cast = Cast.new
  end

  # GET /casts/1/edit
  def edit
  end

  # POST /casts
  # POST /casts.json
  def create
    @cast = @shop_info.casts.create(cast_params)
    # @cast = Cast.new(cast_params)

    respond_to do |format|
      if @cast.save
        # format.html { redirect_to @cast, notice: 'Cast was successfully created.' }
        format.html { redirect_to shop_info_casts_path, notice: 'Cast was successfully created.' }
        format.json { render :show, status: :created, location: @cast }
      else
        format.html { render :new }
        format.json { render json: @cast.errors, status: :unprocessable_entity }
      end
    end

    # redirect_to shop_info_casts_path(params[:shop_info_id])
  end

  # PATCH/PUT /casts/1
  # PATCH/PUT /casts/1.json
  def update
    respond_to do |format|
      if @cast.update(cast_params)
        format.html { redirect_to @cast, notice: 'Cast was successfully updated.' }
        format.json { render :show, status: :ok, location: @cast }
      else
        format.html { render :edit }
        format.json { render json: @cast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /casts/1
  # DELETE /casts/1.json
  def destroy
    @cast.destroy
    respond_to do |format|
      format.html { redirect_to casts_url, notice: 'Cast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cast
      @cast = Cast.find(params[:id])
    end

    def load_shop_info
      @shop_info = ShopInfo.find(params[:shop_info_id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def cast_params
      params.require(:cast).permit(:play_kind_id, :name, :age, :tall, :bust, :cup, :waist, :hip, :photo, :free_after, :price)
    end
end
