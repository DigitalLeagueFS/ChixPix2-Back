class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.string :user_firstname
      t.string :user_secondname
      t.string :user_thirdname
      t.date :user_date
      t.references :position, null: false, foreign_key: true

      t.timestamps
    end
  end
end
