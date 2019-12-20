class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.string :firstName
      t.string :secondName
      t.string :thirdName
      t.integer :access
      t.date :date
      t.references :position, null: false, foreign_key: true

      t.timestamps
    end
  end
end
