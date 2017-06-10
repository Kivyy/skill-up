class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text       :content, null: false
      t.references :match, null: false

      t.timestamps(null: false)
    end
  end
end
