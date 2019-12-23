class AddFieldsToCompany < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :text, :string
    add_column :companies, :img, :string
    add_column :companies, :link, :string
  end
end
