require 'open-uri'
class SheetsController < ApplicationController
  before_action :set_sheet, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]

  # GET /sheets
  # GET /sheets.json
  def index
    @sheets = Sheet.order(:id)
  end

  # GET /sheets/1
  # GET /sheets/1.json
  def show
    @sheet = Sheet.where(id: params[:id], passphrase: params[:passphrase].to_s).first!

    if request.xhr?
      response = open(@sheet.url).read.split("\r\n").uniq
      response.map {|x| x.gsub!(/^/, params[:dots] ? ".@" : "@") }
      render json: response and return
    end

    render layout: false
  end

  # GET /sheets/new
  def new
    @ondas = Onda.where(destroyed_at: nil)
    @sheet = Sheet.new
  end

  # GET /sheets/1/edit
  def edit
    @ondas = Onda.where(destroyed_at: nil)
  end

  # POST /sheets
  # POST /sheets.json
  def create
    @sheet = Sheet.new(sheet_params)

    respond_to do |format|
      if @sheet.save
        format.html { redirect_to sheet_path(@sheet, passphrase: @sheet.passphrase), notice: 'Sheet was successfully created.' }
        format.json { render :show, status: :created, location: @sheet }
      else
        format.html { render :new }
        format.json { render json: @sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sheets/1
  # PATCH/PUT /sheets/1.json
  def update
    respond_to do |format|
      if @sheet.update(sheet_params)
        format.html { redirect_to sheet_path(@sheet, passphrase: @sheet.passphrase), notice: 'Sheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @sheet }
      else
        format.html { render :edit }
        format.json { render json: @sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sheets/1
  # DELETE /sheets/1.json
  def destroy
    @sheet.destroy
    respond_to do |format|
      format.html { redirect_to sheets_url, notice: 'Sheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sheet
      @sheet = Sheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sheet_params
      params.require(:sheet).permit(:url, :title, :passphrase, :onda_id, :tweet_override)
    end
end
