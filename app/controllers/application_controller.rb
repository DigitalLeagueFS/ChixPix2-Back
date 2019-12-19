class ApplicationController < ActionController::Base
  before_action :check
  def check
    unless request.path == '/login'
      secret = 'CRM_SYSTEM'
      begin
        JWT.decode(request.headers['Authorization'],secret, false, {algorithm: 'HS256'})
      rescue
        render json: {status:401} , status: 401
      end
    end
  end
end
