require 'test_helper'

class StoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store = stores(:one)
  end

  test "should get index" do
    get stores_url, as: :json
    assert_response :success
  end

  test "should create store" do
    assert_difference('Store.count') do
      post stores_url, params: { store: { address_store: @store.address_store, celphone_store: @store.celphone_store, dateregis_store: @store.dateregis_store, email_store: @store.email_store, id_store: @store.id_store, name_store: @store.name_store, password_store: @store.password_store, phonenum_store: @store.phonenum_store, score_store: @store.score_store } }, as: :json
    end

    assert_response 201
  end

  test "should show store" do
    get store_url(@store), as: :json
    assert_response :success
  end

  test "should update store" do
    patch store_url(@store), params: { store: { address_store: @store.address_store, celphone_store: @store.celphone_store, dateregis_store: @store.dateregis_store, email_store: @store.email_store, id_store: @store.id_store, name_store: @store.name_store, password_store: @store.password_store, phonenum_store: @store.phonenum_store, score_store: @store.score_store } }, as: :json
    assert_response 200
  end

  test "should destroy store" do
    assert_difference('Store.count', -1) do
      delete store_url(@store), as: :json
    end

    assert_response 204
  end
end
