class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.date :beginning
      t.date :deadline
      t.date :finished
      t.string :conclusion

      t.references :result
      t.references :users
      t.references :clients
    end
  end
end
