class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions do |t|
      t.string :post

      t.timestamps
    end
  end
end
