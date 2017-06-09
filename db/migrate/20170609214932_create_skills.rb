class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.references :subcategory, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps(null: false)
    end
  end
end
