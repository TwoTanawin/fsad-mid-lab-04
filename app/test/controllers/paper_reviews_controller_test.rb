require "test_helper"

class PaperReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paper_review = paper_reviews(:one)
  end

  test "should get index" do
    get paper_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_paper_review_url
    assert_response :success
  end

  test "should create paper_review" do
    assert_difference("PaperReview.count") do
      post paper_reviews_url, params: { paper_review: { author_id: @paper_review.author_id, paper_id: @paper_review.paper_id, rating: @paper_review.rating, review: @paper_review.review } }
    end

    assert_redirected_to paper_review_url(PaperReview.last)
  end

  test "should show paper_review" do
    get paper_review_url(@paper_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_paper_review_url(@paper_review)
    assert_response :success
  end

  test "should update paper_review" do
    patch paper_review_url(@paper_review), params: { paper_review: { author_id: @paper_review.author_id, paper_id: @paper_review.paper_id, rating: @paper_review.rating, review: @paper_review.review } }
    assert_redirected_to paper_review_url(@paper_review)
  end

  test "should destroy paper_review" do
    assert_difference("PaperReview.count", -1) do
      delete paper_review_url(@paper_review)
    end

    assert_redirected_to paper_reviews_url
  end
end
