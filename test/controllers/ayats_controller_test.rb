require 'test_helper'

class AyatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ayat = ayats(:one)
  end

  test "should get index" do
    get ayats_url
    assert_response :success
  end

  test "should get new" do
    get new_ayat_url
    assert_response :success
  end

  test "should create ayat" do
    assert_difference('Ayat.count') do
      post ayats_url, params: { ayat: { ayat: @ayat.ayat, ayat_number: @ayat.ayat_number, book_id: @ayat.book_id, surah_id: @ayat.surah_id } }
    end

    assert_redirected_to ayat_url(Ayat.last)
  end

  test "should show ayat" do
    get ayat_url(@ayat)
    assert_response :success
  end

  test "should get edit" do
    get edit_ayat_url(@ayat)
    assert_response :success
  end

  test "should update ayat" do
    patch ayat_url(@ayat), params: { ayat: { ayat: @ayat.ayat, ayat_number: @ayat.ayat_number, book_id: @ayat.book_id, surah_id: @ayat.surah_id } }
    assert_redirected_to ayat_url(@ayat)
  end

  test "should destroy ayat" do
    assert_difference('Ayat.count', -1) do
      delete ayat_url(@ayat)
    end

    assert_redirected_to ayats_url
  end
end
