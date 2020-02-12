class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.date :beginning
      t.date :deadline ,:null=>true
      t.date :finished ,:null=>true
      t.references :client, null: false, foreign_key: true
      t.references :user, null: true , foreign_key: true
      t.references :result, null: true , foreign_key: true

      t.timestamps
    end
  end
end
