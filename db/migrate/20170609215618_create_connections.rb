class CreateConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :connections do |t|
      t.references :user_1, null: false
      t.references :user_2, null: false

      t.timestamps
    end
  end
end
