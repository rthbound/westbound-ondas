class OndasController < ApplicationController
  before_action :set_onda, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]

  # GET /ondas
  # GET /ondas.json
  def index
    @ondas = Onda.all
  end

  # GET /ondas/1
  # GET /ondas/1.json
  def show
    render layout: false
  end

  # GET /ondas/new
  def new
    @onda = Onda.new
  end

  # GET /ondas/1/edit
  def edit
  end

  # POST /ondas
  # POST /ondas.json
  def create
    @onda = Onda.new(onda_params)

    respond_to do |format|
      if @onda.save
        format.html { redirect_to @onda, notice: 'Onda was successfully created.' }
        format.json { render :show, status: :created, location: @onda }
      else
        format.html { render :new }
        format.json { render json: @onda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ondas/1
  # PATCH/PUT /ondas/1.json
  def update
    respond_to do |format|
      if @onda.update(onda_params)
        format.html { redirect_to @onda, notice: 'Onda was successfully updated.' }
        format.json { render :show, status: :ok, location: @onda }
      else
        format.html { render :edit }
        format.json { render json: @onda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ondas/1
  # DELETE /ondas/1.json
  def destroy
    @onda.destroy
    respond_to do |format|
      format.html { redirect_to ondas_url, notice: 'Onda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_onda
      @onda = Onda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def onda_params
      params.require(:onda).permit(:card_title, :card_description, :card_image_url, :page_title, :page_header, :page_image, :page_image_width, :page_image_height, :page_image_link_target)
    end
end
