class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions do |t|
      t.string :post

      t.timestamps
    end
    create_table :users do |t|
      t.string :login
      t.string :password
      t.string :firstName
      t.string :secondName
      t.string :thirdName
      t.date :date
      t.integer :access
      t.references :position, null: false, foreign_key: true

      t.timestamps
    end
  end
end
