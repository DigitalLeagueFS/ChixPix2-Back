class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :surname
      t.string :thirdName
      t.string :phone

      t.references :companies
    end
  end
end
