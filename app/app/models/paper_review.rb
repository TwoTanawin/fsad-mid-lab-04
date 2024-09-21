# == Schema Information
#
# Table name: paper_reviews
#
#  id         :bigint           not null, primary key
#  rating     :integer
#  review     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :bigint           not null
#  paper_id   :bigint           not null
#
# Indexes
#
#  index_paper_reviews_on_author_id  (author_id)
#  index_paper_reviews_on_paper_id   (paper_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => authors.id)
#  fk_rails_...  (paper_id => papers.id)
#
class PaperReview < ApplicationRecord
  belongs_to :paper
  belongs_to :author
end
