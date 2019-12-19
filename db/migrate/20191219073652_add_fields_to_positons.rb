class AddFieldsToPositons < ActiveRecord::Migration[6.0]
  def change
    Position.create(:post=>'Worker').save
    Position.create(:post=>'Manager').save
  end
end
