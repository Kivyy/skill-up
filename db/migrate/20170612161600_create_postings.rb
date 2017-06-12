class CreatePostings < ActiveRecord::Migration[5.1]
  def change
    create_table :postings do |t|
      t.references :skill, null: false, foreign_key: true
      t.references :creator, null: false, class_name: "User"
      t.text :description, null: false
      t.boolean :teach, null: false, default: true

      t.timestamps(null: false)
    end
  end
end
