class PaperReviewsController < ApplicationController
  before_action :set_paper_review, only: %i[ show edit update destroy ]

  # GET /paper_reviews or /paper_reviews.json
  def index
    @paper_reviews = PaperReview.all
  end

  # GET /paper_reviews/1 or /paper_reviews/1.json
  def show
  end

  # GET /paper_reviews/new
  def new
    @paper_review = PaperReview.new
  end

  # GET /paper_reviews/1/edit
  def edit
  end

  # POST /paper_reviews or /paper_reviews.json
  def create
    @paper_review = PaperReview.new(paper_review_params)

    respond_to do |format|
      if @paper_review.save
        format.html { redirect_to paper_review_url(@paper_review), notice: "Paper review was successfully created." }
        format.json { render :show, status: :created, location: @paper_review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @paper_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paper_reviews/1 or /paper_reviews/1.json
  def update
    respond_to do |format|
      if @paper_review.update(paper_review_params)
        format.html { redirect_to paper_review_url(@paper_review), notice: "Paper review was successfully updated." }
        format.json { render :show, status: :ok, location: @paper_review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @paper_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paper_reviews/1 or /paper_reviews/1.json
  def destroy
    @paper_review.destroy!

    respond_to do |format|
      format.html { redirect_to paper_reviews_url, notice: "Paper review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paper_review
      @paper_review = PaperReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paper_review_params
      params.require(:paper_review).permit(:paper_id, :author_id, :review, :rating)
    end
end
