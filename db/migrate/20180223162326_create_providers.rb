class CreateProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :providers do |t|
      t.string :provider_name
      t.text :provider_description
      t.string :provider_email
      t.string :provider_phone
      t.string :provider_address
      t.string :provider_city

      t.timestamps
    end
  end
end
