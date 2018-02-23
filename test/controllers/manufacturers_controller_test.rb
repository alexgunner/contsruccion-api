require 'test_helper'

class ManufacturersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manufacturer = manufacturers(:one)
  end

  test "should get index" do
    get manufacturers_url, as: :json
    assert_response :success
  end

  test "should create manufacturer" do
    assert_difference('Manufacturer.count') do
      post manufacturers_url, params: { manufacturer: { manufacturer_city: @manufacturer.manufacturer_city, manufacturer_country: @manufacturer.manufacturer_country, manufacturer_description: @manufacturer.manufacturer_description, manufacturer_email: @manufacturer.manufacturer_email, manufacturer_name: @manufacturer.manufacturer_name, manufacturer_phone: @manufacturer.manufacturer_phone } }, as: :json
    end

    assert_response 201
  end

  test "should show manufacturer" do
    get manufacturer_url(@manufacturer), as: :json
    assert_response :success
  end

  test "should update manufacturer" do
    patch manufacturer_url(@manufacturer), params: { manufacturer: { manufacturer_city: @manufacturer.manufacturer_city, manufacturer_country: @manufacturer.manufacturer_country, manufacturer_description: @manufacturer.manufacturer_description, manufacturer_email: @manufacturer.manufacturer_email, manufacturer_name: @manufacturer.manufacturer_name, manufacturer_phone: @manufacturer.manufacturer_phone } }, as: :json
    assert_response 200
  end

  test "should destroy manufacturer" do
    assert_difference('Manufacturer.count', -1) do
      delete manufacturer_url(@manufacturer), as: :json
    end

    assert_response 204
  end
end
