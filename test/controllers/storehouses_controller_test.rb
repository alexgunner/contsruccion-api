require 'test_helper'

class StorehousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @storehouse = storehouses(:one)
  end

  test "should get index" do
    get storehouses_url, as: :json
    assert_response :success
  end

  test "should create storehouse" do
    assert_difference('Storehouse.count') do
      post storehouses_url, params: { storehouse: { storehouse_address: @storehouse.storehouse_address, storehouse_city: @storehouse.storehouse_city, storehouse_country: @storehouse.storehouse_country, storehouse_name: @storehouse.storehouse_name, storehouse_phone: @storehouse.storehouse_phone } }, as: :json
    end

    assert_response 201
  end

  test "should show storehouse" do
    get storehouse_url(@storehouse), as: :json
    assert_response :success
  end

  test "should update storehouse" do
    patch storehouse_url(@storehouse), params: { storehouse: { storehouse_address: @storehouse.storehouse_address, storehouse_city: @storehouse.storehouse_city, storehouse_country: @storehouse.storehouse_country, storehouse_name: @storehouse.storehouse_name, storehouse_phone: @storehouse.storehouse_phone } }, as: :json
    assert_response 200
  end

  test "should destroy storehouse" do
    assert_difference('Storehouse.count', -1) do
      delete storehouse_url(@storehouse), as: :json
    end

    assert_response 204
  end
end
