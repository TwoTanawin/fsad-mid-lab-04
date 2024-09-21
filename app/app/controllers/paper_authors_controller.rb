class PaperAuthorsController < ApplicationController
  before_action :set_paper_author, only: %i[ show edit update destroy ]

  # GET /paper_authors or /paper_authors.json
  def index
    @paper_authors = PaperAuthor.all
  end

  # GET /paper_authors/1 or /paper_authors/1.json
  def show
  end

  # GET /paper_authors/new
  def new
    @paper_author = PaperAuthor.new
  end

  # GET /paper_authors/1/edit
  def edit
  end

  # POST /paper_authors or /paper_authors.json
  def create
    @paper_author = PaperAuthor.new(paper_author_params)

    respond_to do |format|
      if @paper_author.save
        format.html { redirect_to paper_author_url(@paper_author), notice: "Paper author was successfully created." }
        format.json { render :show, status: :created, location: @paper_author }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @paper_author.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paper_authors/1 or /paper_authors/1.json
  def update
    respond_to do |format|
      if @paper_author.update(paper_author_params)
        format.html { redirect_to paper_author_url(@paper_author), notice: "Paper author was successfully updated." }
        format.json { render :show, status: :ok, location: @paper_author }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @paper_author.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paper_authors/1 or /paper_authors/1.json
  def destroy
    @paper_author.destroy!

    respond_to do |format|
      format.html { redirect_to paper_authors_url, notice: "Paper author was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paper_author
      @paper_author = PaperAuthor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paper_author_params
      params.require(:paper_author).permit(:paper_id, :author_id)
    end
end
