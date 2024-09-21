# == Schema Information
#
# Table name: statuses
#
#  id          :bigint           not null, primary key
#  is_rejected :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  paper_id    :bigint           not null
#
# Indexes
#
#  index_statuses_on_paper_id  (paper_id)
#
# Foreign Keys
#
#  fk_rails_...  (paper_id => papers.id)
#
require "test_helper"

class StatusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
