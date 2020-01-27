class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :client_name
      t.string :client_surname
      t.string :client_thirdname
      t.string :client_phone
      t.date :client_date
      t.string :link
      t.references :company, null: true , foreign_key: true, on_delete: :cascade
      t.timestamps
    end
  end
end
