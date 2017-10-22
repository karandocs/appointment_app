class SessionsController < DeviseTokenAuth::SessionsController

  def create
    if request.env['omniauth.auth']
      user = User.create_with_omniauth(request.env['omniauth.auth'])
      session[:user_id] = user.id
      render json: {user: user}
    else
      user = User.find_by_email(params[:email])
      user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render json: {user: user}
    end
  end

end
