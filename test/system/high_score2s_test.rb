require "application_system_test_case"

class HighScore2sTest < ApplicationSystemTestCase
  setup do
    @high_score2 = high_score2s(:one)
  end

  test "visiting the index" do
    visit high_score2s_url
    assert_selector "h1", text: "High Score2s"
  end

  test "creating a High score2" do
    visit high_score2s_url
    click_on "New High Score2"

    fill_in "Game", with: @high_score2.game
    fill_in "Score", with: @high_score2.score
    click_on "Create High score2"

    assert_text "High score2 was successfully created"
    click_on "Back"
  end

  test "updating a High score2" do
    visit high_score2s_url
    click_on "Edit", match: :first

    fill_in "Game", with: @high_score2.game
    fill_in "Score", with: @high_score2.score
    click_on "Update High score2"

    assert_text "High score2 was successfully updated"
    click_on "Back"
  end

  test "destroying a High score2" do
    visit high_score2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "High score2 was successfully destroyed"
  end
end
