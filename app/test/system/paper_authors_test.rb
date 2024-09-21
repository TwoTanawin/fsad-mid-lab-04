require "application_system_test_case"

class PaperAuthorsTest < ApplicationSystemTestCase
  setup do
    @paper_author = paper_authors(:one)
  end

  test "visiting the index" do
    visit paper_authors_url
    assert_selector "h1", text: "Paper authors"
  end

  test "should create paper author" do
    visit paper_authors_url
    click_on "New paper author"

    fill_in "Author", with: @paper_author.author_id
    fill_in "Paper", with: @paper_author.paper_id
    click_on "Create Paper author"

    assert_text "Paper author was successfully created"
    click_on "Back"
  end

  test "should update Paper author" do
    visit paper_author_url(@paper_author)
    click_on "Edit this paper author", match: :first

    fill_in "Author", with: @paper_author.author_id
    fill_in "Paper", with: @paper_author.paper_id
    click_on "Update Paper author"

    assert_text "Paper author was successfully updated"
    click_on "Back"
  end

  test "should destroy Paper author" do
    visit paper_author_url(@paper_author)
    click_on "Destroy this paper author", match: :first

    assert_text "Paper author was successfully destroyed"
  end
end
