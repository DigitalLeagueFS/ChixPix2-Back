class InsertIntoPositionValues < ActiveRecord::Migration[6.0]
  def self.up
    Position.create(:post=>'Worker').save
    Position.create(:post=>'Manager').save
  end
end
