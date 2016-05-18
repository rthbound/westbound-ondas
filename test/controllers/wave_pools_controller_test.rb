require 'test_helper'

class WavePoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wave_pool = wave_pools(:one)
  end

  test "should get index" do
    get wave_pools_url
    assert_response :success
  end

  test "should get new" do
    get new_wave_pool_url
    assert_response :success
  end

  test "should create wave_pool" do
    assert_difference('WavePool.count') do
      post wave_pools_url, params: { wave_pool: { url: @wave_pool.url } }
    end

    assert_redirected_to wave_pool_path(WavePool.last)
  end

  test "should show wave_pool" do
    get wave_pool_url(@wave_pool)
    assert_response :success
  end

  test "should get edit" do
    get edit_wave_pool_url(@wave_pool)
    assert_response :success
  end

  test "should update wave_pool" do
    patch wave_pool_url(@wave_pool), params: { wave_pool: { url: @wave_pool.url } }
    assert_redirected_to wave_pool_path(@wave_pool)
  end

  test "should destroy wave_pool" do
    assert_difference('WavePool.count', -1) do
      delete wave_pool_url(@wave_pool)
    end

    assert_redirected_to wave_pools_path
  end
end
