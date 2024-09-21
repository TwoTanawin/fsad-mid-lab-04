class CreatePaperAuthors < ActiveRecord::Migration[7.2]
  def change
    create_table :paper_authors do |t|
      t.references :paper, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
