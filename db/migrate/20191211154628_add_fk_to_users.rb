class AddFkToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :positions
  end
end
