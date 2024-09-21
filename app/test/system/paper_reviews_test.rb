require "application_system_test_case"

class PaperReviewsTest < ApplicationSystemTestCase
  setup do
    @paper_review = paper_reviews(:one)
  end

  test "visiting the index" do
    visit paper_reviews_url
    assert_selector "h1", text: "Paper reviews"
  end

  test "should create paper review" do
    visit paper_reviews_url
    click_on "New paper review"

    fill_in "Author", with: @paper_review.author_id
    fill_in "Paper", with: @paper_review.paper_id
    fill_in "Rating", with: @paper_review.rating
    fill_in "Review", with: @paper_review.review
    click_on "Create Paper review"

    assert_text "Paper review was successfully created"
    click_on "Back"
  end

  test "should update Paper review" do
    visit paper_review_url(@paper_review)
    click_on "Edit this paper review", match: :first

    fill_in "Author", with: @paper_review.author_id
    fill_in "Paper", with: @paper_review.paper_id
    fill_in "Rating", with: @paper_review.rating
    fill_in "Review", with: @paper_review.review
    click_on "Update Paper review"

    assert_text "Paper review was successfully updated"
    click_on "Back"
  end

  test "should destroy Paper review" do
    visit paper_review_url(@paper_review)
    click_on "Destroy this paper review", match: :first

    assert_text "Paper review was successfully destroyed"
  end
end
