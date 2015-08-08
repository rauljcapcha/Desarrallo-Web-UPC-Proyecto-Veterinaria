module SessionsHelper
  
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end
  
  # Remembers a user in a persistent session.
  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end
  
  # Returns the user corresponding to the remember token cookie.
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      raise       # The tests still pass, so this branch is currently untested.
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
  
  # Forgets a persistent session.
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  # Logs out the current user.
  def log_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end
  
  def store_location
	    session[:return_to] = request.fullpath
  end
  
  def signed_in?
    !current_user.nil?
  end

  def current_action?(options)
    url_string = CGI.escapeHTML(url_for(options))
    params = ActionController::Routing::Routes.recognize_path(url_string, :method => :get)
    params[:controller] == @controller.controller_name && params[:action] == @controller.action_name
  end
  
  def current_controller?(options)
    url_string = CGI.escapeHTML(url_for(options))
    params = ActionController::Routing::Routes.recognize_path(url_string, :method => :get)
    params[:controller] == @controller.controller_name
  end


  def signed_in_user
    unless signed_in?
      store_location
      flash.now[:danger] = "Por favor, iniciar Sesión"
      redirect_to login_path, notice: "Please sign in." 
    else
      if current_user.user_type_id == 3
        case params[:controller]
        when "veterinary_appointments"
          #flash[:notice] = params[:controller]
        when "sessions"
          #flash[:notice] = params[:controller]
        else
          flash[:danger] = "Acción no disponible"
          store_location
          redirect_to veterinary_appointments_path
        end
      end
    end
  end

  def current_user=(user)
    @current_user = user
  end
  
  def admin_user
    redirect_to root_path unless !current_user.nil?
  end
  
  def correct_user
    @user = User.find(params[:id])
    redirect_to root_path unless !current_user.nil?
  end
end
