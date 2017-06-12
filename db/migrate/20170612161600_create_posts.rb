class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.references :skill, foreign_key: true
      t.references :creator, class_name: "User"
      t.text :description, null: false

      t.timestamps(null: false)
    end
  end
end
