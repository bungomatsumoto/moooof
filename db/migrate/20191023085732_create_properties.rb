class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.text :name, null: false
      t.integer :rent, null: false
      t.text :address, null: false
      t.integer :age, null: false
      t.text :notes, null: false

      t.timestamps
    end
  end
end
