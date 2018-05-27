require 'test_helper'

class ComponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @component = components(:one)
  end

  test "should get index" do
    get components_url, as: :json
    assert_response :success
  end

  test "should create component" do
    assert_difference('Component.count') do
      post components_url, params: { component: { brand_component: @component.brand_component, description_component: @component.description_component, material_component: @component.material_component, price_component: @component.price_component, sizes_component: @component.sizes_component, type_component: @component.type_component } }, as: :json
    end

    assert_response 201
  end

  test "should show component" do
    get component_url(@component), as: :json
    assert_response :success
  end

  test "should update component" do
    patch component_url(@component), params: { component: { brand_component: @component.brand_component, description_component: @component.description_component, material_component: @component.material_component, price_component: @component.price_component, sizes_component: @component.sizes_component, type_component: @component.type_component } }, as: :json
    assert_response 200
  end

  test "should destroy component" do
    assert_difference('Component.count', -1) do
      delete component_url(@component), as: :json
    end

    assert_response 204
  end
end
