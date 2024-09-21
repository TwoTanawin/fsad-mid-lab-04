class CreateStatuses < ActiveRecord::Migration[7.2]
  def change
    create_table :statuses do |t|
      t.references :paper, null: false, foreign_key: true
      t.boolean :is_rejected

      t.timestamps
    end
  end
end
