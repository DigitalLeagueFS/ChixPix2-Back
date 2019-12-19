class AddUsers < ActiveRecord::Migration[6.0]
  def change
    User.create(
        :login=>'admin',
        :password=>BCrypt::Password.create('admin'),
        :firstName=> 'Dmitry',
        :secondName=> 'Sevostyanov',
        :thirdName=> 'Romanovich',
        :date=> '1999-06-01',
        :access=> 1,
        :position_id=>2
    ).save
    User.create(
        :login=>'gekas',
        :password=>BCrypt::Password.create('qwerty'),
        :firstName=> 'Evgeny',
        :secondName=> 'Ponomarev',
        :thirdName=> 'Konstantinovich',
        :date=> '1999-12-23',
        :access=> 1,
        :position_id=>2

    ).save
    User.create(
        :login=>'sasha',
        :password=>BCrypt::Password.create('12345'),
        :firstName=> 'Alexandr',
        :secondName=> 'Burenin',
        :thirdName=> 'Olegovich',
        :date=> '1999-07-09',
        :access=> 1,
        :position_id=>2
    ).save
  end
end
