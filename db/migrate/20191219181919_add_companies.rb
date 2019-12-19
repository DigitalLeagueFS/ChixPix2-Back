class AddCompanies < ActiveRecord::Migration[6.0]
  def change
    Company.create(:name=>'DigitalLeague',:desc=>'It').save
    Company.create(:name=>'VSU',:desc=>'University').save
    Company.create(:name=>'Gazprom',:desc=>'Government').save
    Company.create(:name=>'Letov',:desc=>'Government').save
  end
end
