class CreateApprenticeships < ActiveRecord::Migration[5.1]
  def change
    create_table :apprenticeships do |t|
      t.references :sender, class_name: "User"
      t.references :recipient, class_name: "User"

      t.timestamps
    end
  end
end
