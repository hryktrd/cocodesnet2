class PlayKindsController < ApplicationController
  before_action :set_play_kind, only: [:show, :edit, :update, :destroy]

  # GET /play_kinds
  # GET /play_kinds.json
  def index
    @play_kinds = PlayKind.all
  end

  # GET /play_kinds/1
  # GET /play_kinds/1.json
  def show
  end

  # GET /play_kinds/new
  def new
    @play_kind = PlayKind.new
  end

  # GET /play_kinds/1/edit
  def edit
  end

  # POST /play_kinds
  # POST /play_kinds.json
  def create
    @play_kind = PlayKind.new(play_kind_params)

    respond_to do |format|
      if @play_kind.save
        format.html { redirect_to @play_kind, notice: 'Play kind was successfully created.' }
        format.json { render :show, status: :created, location: @play_kind }
      else
        format.html { render :new }
        format.json { render json: @play_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /play_kinds/1
  # PATCH/PUT /play_kinds/1.json
  def update
    respond_to do |format|
      if @play_kind.update(play_kind_params)
        format.html { redirect_to @play_kind, notice: 'Play kind was successfully updated.' }
        format.json { render :show, status: :ok, location: @play_kind }
      else
        format.html { render :edit }
        format.json { render json: @play_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /play_kinds/1
  # DELETE /play_kinds/1.json
  def destroy
    @play_kind.destroy
    respond_to do |format|
      format.html { redirect_to play_kinds_url, notice: 'Play kind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_play_kind
      @play_kind = PlayKind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def play_kind_params
      params.require(:play_kind).permit(:kind)
    end
end
