class CreateStorehouses < ActiveRecord::Migration[5.1]
  def change
    create_table :storehouses do |t|
      t.string :storehouse_name
      t.string :storehouse_country
      t.string :storehouse_city
      t.string :storehouse_address
      t.string :storehouse_phone

      t.timestamps
    end
  end
end
