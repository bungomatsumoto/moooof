class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :route
      t.string :station_name
      t.integer :distance

      t.timestamps
    end
  end
end
