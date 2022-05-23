require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit questions_url
  #
  #   assert_selector "h1", text: "Questions"
  # end

  test "saying hello in /ask" do
    take_screenshot
    visit ask_url
    take_screenshot
    fill_in "question", with: "Hello"
    take_screenshot
    click_on "Ask!"
    take_screenshot
    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end
end
