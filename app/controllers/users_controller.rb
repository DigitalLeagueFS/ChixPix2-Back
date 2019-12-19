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
  def profile
    secret = 'CRM_SYSTEM'
    str = request.headers['Authorization']
    id = JWT.decode str, secret, false, {algorithm: 'HS256'}
    @user = User.includes(:position).find_by_id(id)
    puts @user.attributes
    render json: {
        firstName:@user.firstName,
        secondName:@user.secondName,
        thirdName:@user.thirdName,
        date:@user.date,
        access:@user.access
    }
  end
end
