class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :surname
      t.string :thirdName
      t.string :phone
      t.date :date
      t.string :link
      t.references :company, null: true , foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
