# == Schema Information
#
# Table name: authors
#
#  id           :bigint           not null, primary key
#  is_committee :boolean
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Author < ApplicationRecord
  has_many :paper_authors
  has_many :papers, through: :paper_authors
  has_many :paper_reviews, foreign_key: :author_id
end
