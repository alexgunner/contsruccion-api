class ProductInStorehousesController < ApplicationController
  before_action :set_product_in_storehouse, only: [:show, :update, :destroy]

  # GET /product_in_storehouses
  def index
    @product_in_storehouses = ProductInStorehouse.all

    render json: @product_in_storehouses
  end

  # GET /product_in_storehouses/1
  def show
    render json: @product_in_storehouse
  end

  # POST /product_in_storehouses
  def create
    @product_in_storehouse = ProductInStorehouse.new(product_in_storehouse_params)

    if @product_in_storehouse.save
      render json: @product_in_storehouse, status: :created, location: @product_in_storehouse
    else
      render json: @product_in_storehouse.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /product_in_storehouses/1
  def update
    if @product_in_storehouse.update(product_in_storehouse_params)
      render json: @product_in_storehouse
    else
      render json: @product_in_storehouse.errors, status: :unprocessable_entity
    end
  end

  # DELETE /product_in_storehouses/1
  def destroy
    @product_in_storehouse.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_in_storehouse
      @product_in_storehouse = ProductInStorehouse.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_in_storehouse_params
      params.require(:product_in_storehouse).permit(:quantity, :product_id, :storehouse_id)
    end
end
