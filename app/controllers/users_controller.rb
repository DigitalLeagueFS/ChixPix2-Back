class UsersController < ApplicationController
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
  def show
    id = token_id
    @user = User.joins(:position).select('user_firstname',
                                         'user_secondname',
                                         'user_thirdname',
                                         'user_date',
                                         'post').find_by_id(id)
    render json: {
        firstName:@user.user_firstname,
        secondName:@user.user_secondname,
        thirdName:@user.user_thirdname,
        date:@user.user_date,
        post:@user.post
    }
  end
  def show_name
    id = token_id
    @user = User.find_by_id(id)
    render json: {name:@user.user_firstname}
  end
  def show_post
    @pos = Position.select('post').all
    render json: @pos.as_json
  end
  def create
    puts params
    @post = Position.find_by_post(params[:clickedPost][:post])
    @user = User.create(
        login:params[:login],
        password:BCrypt::Password.create(params[:password]),
        user_firstname:params[:name],
        user_secondname:params[:surname],
        user_thirdname:params[:thirdName],
        user_date:params[:date],
        position_id:@post.id
    )
     render json: @user.as_json
  end
end
