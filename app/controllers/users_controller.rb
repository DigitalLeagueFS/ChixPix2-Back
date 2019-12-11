class UsersController < ApplicationController
  def login
    @user = User.find_by_login(params[:login])
    if @user
      if BCrypt::Password.new(@user.password) == params[:password]
        render plain: gen_token(@user.id)
      else
        render plain: 'incorrect password'
      end
    else
      render plain: 'incorrect data'
    end
  end
  def gen_token(payload)
    password = 'CRM_SYSTEM'
    JWT.encode payload, password, 'none'
  end
  def gen_hash(password)
    BCrypt::Password.create(password)
  end
end
