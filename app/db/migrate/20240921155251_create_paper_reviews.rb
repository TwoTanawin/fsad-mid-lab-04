class CreatePaperReviews < ActiveRecord::Migration[7.2]
  def change
    create_table :paper_reviews do |t|
      t.references :paper, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true
      t.text :review
      t.integer :rating

      t.timestamps
    end
  end
end
