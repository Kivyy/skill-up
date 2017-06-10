class CreateUserMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :user_matches do |t|
      t.references :user_1, null: false
      t.references :user_2, null: false

      t.timestamps(null: false)
    end
  end
end