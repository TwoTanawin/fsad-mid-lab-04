# == Schema Information
#
# Table name: paper_authors
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :bigint           not null
#  paper_id   :bigint           not null
#
# Indexes
#
#  index_paper_authors_on_author_id  (author_id)
#  index_paper_authors_on_paper_id   (paper_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => authors.id)
#  fk_rails_...  (paper_id => papers.id)
#
require "test_helper"

class PaperAuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
