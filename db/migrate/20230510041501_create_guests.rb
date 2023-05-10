class CreateGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :address
      t.string :email
      t.integer :attend
      t.string :allergy
      t.string :message

      t.timestamps
    end
  end
end
