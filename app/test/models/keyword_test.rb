# == Schema Information
#
# Table name: keywords
#
#  id         :bigint           not null, primary key
#  keyword    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  paper_id   :bigint           not null
#
# Indexes
#
#  index_keywords_on_paper_id  (paper_id)
#
# Foreign Keys
#
#  fk_rails_...  (paper_id => papers.id)
#
require "test_helper"

class KeywordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
