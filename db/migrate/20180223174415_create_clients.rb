class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :client_name
      t.string :client_lastname
      t.string :client_address
      t.string :client_phone
      t.string :client_email
      t.string :client_nit

      t.timestamps
    end
  end
end
