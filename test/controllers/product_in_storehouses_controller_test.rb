require 'test_helper'

class ProductInStorehousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_in_storehouse = product_in_storehouses(:one)
  end

  test "should get index" do
    get product_in_storehouses_url, as: :json
    assert_response :success
  end

  test "should create product_in_storehouse" do
    assert_difference('ProductInStorehouse.count') do
      post product_in_storehouses_url, params: { product_in_storehouse: { product_id: @product_in_storehouse.product_id, quantity: @product_in_storehouse.quantity, storehouse_id: @product_in_storehouse.storehouse_id } }, as: :json
    end

    assert_response 201
  end

  test "should show product_in_storehouse" do
    get product_in_storehouse_url(@product_in_storehouse), as: :json
    assert_response :success
  end

  test "should update product_in_storehouse" do
    patch product_in_storehouse_url(@product_in_storehouse), params: { product_in_storehouse: { product_id: @product_in_storehouse.product_id, quantity: @product_in_storehouse.quantity, storehouse_id: @product_in_storehouse.storehouse_id } }, as: :json
    assert_response 200
  end

  test "should destroy product_in_storehouse" do
    assert_difference('ProductInStorehouse.count', -1) do
      delete product_in_storehouse_url(@product_in_storehouse), as: :json
    end

    assert_response 204
  end
end
