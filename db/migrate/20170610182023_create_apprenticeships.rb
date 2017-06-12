class CreateApprenticeships < ActiveRecord::Migration[5.1]
  def change
    create_table :apprenticeships do |t|
      t.string :offer, null: false 
      t.references :requestor, class_name: "User"
      t.references :post, null: false
      t.boolean :accepted, :default => false

      t.timestamps
    end
  end
end
