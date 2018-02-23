class StorehousesController < ApplicationController
  before_action :set_storehouse, only: [:show, :update, :destroy]

  # GET /storehouses
  def index
    @storehouses = Storehouse.all

    render json: @storehouses
  end

  # GET /storehouses/1
  def show
    render json: @storehouse
  end

  # POST /storehouses
  def create
    @storehouse = Storehouse.new(storehouse_params)

    if @storehouse.save
      render json: @storehouse, status: :created, location: @storehouse
    else
      render json: @storehouse.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /storehouses/1
  def update
    if @storehouse.update(storehouse_params)
      render json: @storehouse
    else
      render json: @storehouse.errors, status: :unprocessable_entity
    end
  end

  # DELETE /storehouses/1
  def destroy
    @storehouse.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storehouse
      @storehouse = Storehouse.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def storehouse_params
      params.require(:storehouse).permit(:storehouse_name, :storehouse_country, :storehouse_city, :storehouse_address, :storehouse_phone)
    end
end
