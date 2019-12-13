class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.string :firstName
      t.string :secondName
      t.string :thirdName
      t.date :date
      t.string :access

    end
  end
end
