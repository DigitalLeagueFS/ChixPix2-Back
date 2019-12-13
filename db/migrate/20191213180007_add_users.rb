class AddUsers < ActiveRecord::Migration[6.0]
  def self.up
    User.create(
        :login=>'admin',
        :password=>BCrypt::Password.create('admin'),
        :firstName=> 'Dmitry',
        :secondName=> 'Sevostyanov',
        :thirdName=> 'Romanovich',
        :date=> '1999-06-01',
        :access=> 'high'
    ).save
  end
end
