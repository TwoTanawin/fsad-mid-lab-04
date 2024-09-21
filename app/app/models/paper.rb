# == Schema Information
#
# Table name: papers
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Paper < ApplicationRecord
  has_many :paper_authors
  has_many :authors, through: :paper_authors
  has_many :paper_reviews
  has_one :status
  has_many :keywords
end
