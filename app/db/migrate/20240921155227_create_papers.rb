class CreatePapers < ActiveRecord::Migration[7.2]
  def change
    create_table :papers do |t|
      t.string :title

      t.timestamps
    end
  end
end
