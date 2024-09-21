# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Clear existing records
PaperAuthor.destroy_all
PaperReview.destroy_all
Keyword.destroy_all
Status.destroy_all
Paper.destroy_all
Author.destroy_all

# Create Authors
author1 = Author.create(name: "John Doe", is_committee: true)
author2 = Author.create(name: "Jane Smith", is_committee: false)
author3 = Author.create(name: "Alex Johnson", is_committee: true)

# Create Papers
paper1 = Paper.create(title: "The Future of AI")
paper2 = Paper.create(title: "Deep Learning Trends")
paper3 = Paper.create(title: "Data Science in Healthcare")

# Associate Authors with Papers (PaperAuthor - Many-to-Many Relationship)
PaperAuthor.create(paper: paper1, author: author1)
PaperAuthor.create(paper: paper1, author: author2)
PaperAuthor.create(paper: paper2, author: author2)
PaperAuthor.create(paper: paper3, author: author3)

# Create Paper Reviews
PaperReview.create(paper: paper1, author: author3, review: "Great work on AI", rating: 5)
PaperReview.create(paper: paper2, author: author1, review: "Needs more clarity", rating: 3)
PaperReview.create(paper: paper3, author: author2, review: "Interesting insights", rating: 4)

# Create Statuses for Papers
Status.create(paper: paper1, is_rejected: false)
Status.create(paper: paper2, is_rejected: true)
Status.create(paper: paper3, is_rejected: false)

# Create Keywords for Papers
Keyword.create(paper: paper1, keyword: "AI")
Keyword.create(paper: paper1, keyword: "Future")
Keyword.create(paper: paper2, keyword: "Deep Learning")
Keyword.create(paper: paper2, keyword: "Trends")
Keyword.create(paper: paper3, keyword: "Data Science")
Keyword.create(paper: paper3, keyword: "Healthcare")
