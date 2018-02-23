class CreateManufacturers < ActiveRecord::Migration[5.1]
  def change
    create_table :manufacturers do |t|
      t.string :manufacturer_name
      t.text :manufacturer_description
      t.string :manufacturer_country
      t.string :manufacturer_city
      t.string :manufacturer_email
      t.string :manufacturer_phone

      t.timestamps
    end
  end
end
