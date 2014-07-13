class ShopCategoriesController < ApplicationController
  before_action :set_shop_category, only: [:show, :edit, :update, :destroy]

  # GET /shop_categories
  # GET /shop_categories.json
  def index
    @shop_categories = ShopCategory.all
  end

  # GET /shop_categories/1
  # GET /shop_categories/1.json
  def show
  end

  # GET /shop_categories/new
  def new
    @shop_category = ShopCategory.new
  end

  # GET /shop_categories/1/edit
  def edit
  end

  # POST /shop_categories
  # POST /shop_categories.json
  def create
    @shop_category = ShopCategory.new(shop_category_params)

    respond_to do |format|
      if @shop_category.save
        format.html { redirect_to @shop_category, notice: 'Shop category was successfully created.' }
        format.json { render :show, status: :created, location: @shop_category }
      else
        format.html { render :new }
        format.json { render json: @shop_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_categories/1
  # PATCH/PUT /shop_categories/1.json
  def update
    respond_to do |format|
      if @shop_category.update(shop_category_params)
        format.html { redirect_to @shop_category, notice: 'Shop category was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop_category }
      else
        format.html { render :edit }
        format.json { render json: @shop_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_categories/1
  # DELETE /shop_categories/1.json
  def destroy
    @shop_category.destroy
    respond_to do |format|
      format.html { redirect_to shop_categories_url, notice: 'Shop category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_category
      @shop_category = ShopCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_category_params
      params.require(:shop_category).permit(:category)
    end
end
