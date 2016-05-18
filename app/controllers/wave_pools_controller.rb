require 'open-uri'
require 'csv'
class WavePoolsController < ApplicationController
  before_action :set_wave_pool, only: [:show, :edit, :update, :destroy, :index]
  prepend_before_action :set_wave_pool_id, only: [:index]
  before_action :authenticate_user!, except: [:show]

  # GET /wave_pools
  # GET /wave_pools.json
  def index
    @wave_pools = CSV.parse(open(@wave_pool.url).read, headers: true)

    render partial: "index", layout: false
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wave_pool
      @wave_pool = WavePool.find(params[:id])
    end

    def set_wave_pool_id
      params[:id] ||= 1
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wave_pool_params
      params.require(:wave_pool).permit(:url)
    end
end
