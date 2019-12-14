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
    secret = 'CRM_SYSTEM'
    JWT.encode payload,secret,'HS256'
  end
  def gen_hash(password)
    BCrypt::Password.create(password)
  end
  def check
    secret = 'CRM_SYSTEM'
    HashWithIndifferentAccess.new(JWT.decode params[:token], secret, false, {algorithm: 'HS256'})
    render plain: 'ok'
  rescue
    render plain:'not ok'
  end
end
