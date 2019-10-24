class CreatePropertyStations < ActiveRecord::Migration[5.0]
  def change
    create_table :property_stations do |t|
      t.references :property, foreign_key: true
      t.references :station, foreign_key: true

      t.timestamps
    end
  end
end
