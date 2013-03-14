class ApplicationController < ActionController::Base
  protect_from_forgery

  # before_filter :authenticate
  # before_filter :set_current_division
  
  helper_method :current_division
  
  protected
    def authenticate
      authenticate_or_request_with_http_basic do |username, password|
        username == "smetrics" && password == "apihelp"
      end
    end
    
    def check_current_division
      if not current_division
        flash[:error] = "Please select a Division."
        redirect_to root_url
      end
    end
    
    def current_division
      @current_division = cookies[:division]
    end
end
