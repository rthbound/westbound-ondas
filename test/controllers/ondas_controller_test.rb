require 'test_helper'

class OndasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @onda = ondas(:one)
  end

  test "should get index" do
    get ondas_url
    assert_response :success
  end

  test "should get new" do
    get new_onda_url
    assert_response :success
  end

  test "should create onda" do
    assert_difference('Onda.count') do
      post ondas_url, params: { onda: { card_description: @onda.card_description, card_image_url: @onda.card_image_url, card_title: @onda.card_title, page_header: @onda.page_header, page_image: @onda.page_image, page_image_height: @onda.page_image_height, page_image_link_target: @onda.page_image_link_target, page_image_width: @onda.page_image_width, page_title: @onda.page_title } }
    end

    assert_redirected_to onda_path(Onda.last)
  end

  test "should show onda" do
    get onda_url(@onda)
    assert_response :success
  end

  test "should get edit" do
    get edit_onda_url(@onda)
    assert_response :success
  end

  test "should update onda" do
    patch onda_url(@onda), params: { onda: { card_description: @onda.card_description, card_image_url: @onda.card_image_url, card_title: @onda.card_title, page_header: @onda.page_header, page_image: @onda.page_image, page_image_height: @onda.page_image_height, page_image_link_target: @onda.page_image_link_target, page_image_width: @onda.page_image_width, page_title: @onda.page_title } }
    assert_redirected_to onda_path(@onda)
  end

  test "should destroy onda" do
    assert_difference('Onda.count', -1) do
      delete onda_url(@onda)
    end

    assert_redirected_to ondas_path
  end
end
