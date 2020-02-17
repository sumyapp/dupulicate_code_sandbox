require 'test_helper'

class HighScore2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @high_score2 = high_score2s(:one)
  end

  test "should get index" do
    get high_score2s_url
    assert_response :success
  end

  test "should get new" do
    get new_high_score2_url
    assert_response :success
  end

  test "should create high_score2" do
    assert_difference('HighScore2.count') do
      post high_score2s_url, params: { high_score2: { game: @high_score2.game, score: @high_score2.score } }
    end

    assert_redirected_to high_score2_url(HighScore2.last)
  end

  test "should show high_score2" do
    get high_score2_url(@high_score2)
    assert_response :success
  end

  test "should get edit" do
    get edit_high_score2_url(@high_score2)
    assert_response :success
  end

  test "should update high_score2" do
    patch high_score2_url(@high_score2), params: { high_score2: { game: @high_score2.game, score: @high_score2.score } }
    assert_redirected_to high_score2_url(@high_score2)
  end

  test "should destroy high_score2" do
    assert_difference('HighScore2.count', -1) do
      delete high_score2_url(@high_score2)
    end

    assert_redirected_to high_score2s_url
  end
end
