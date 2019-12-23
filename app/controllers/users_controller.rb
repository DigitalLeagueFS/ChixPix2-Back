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
  private def gen_token(payload)
    secret = 'CRM_SYSTEM'
    JWT.encode payload,secret,'HS256'
  end
  private def gen_hash(password)
    BCrypt::Password.create(password)
  end
  private def token_id
    secret = 'CRM_SYSTEM'
    str = request.headers['Authorization']
    JWT.decode str, secret, false, {algorithm: 'HS256'}
  end
  def profile
    id = token_id
    @user = User.joins(:position).select('firstName','secondName','thirdName','date','access','post').find_by_id(id)
    render json: {
        firstName:@user.firstName,
        secondName:@user.secondName,
        thirdName:@user.thirdName,
        date:@user.date,
        access:@user.access,
        post:@user.post
    }
  end
end
