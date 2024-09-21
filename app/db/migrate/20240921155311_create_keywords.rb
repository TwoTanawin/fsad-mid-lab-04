class CreateKeywords < ActiveRecord::Migration[7.2]
  def change
    create_table :keywords do |t|
      t.references :paper, null: false, foreign_key: true
      t.string :keyword

      t.timestamps
    end
  end
end
