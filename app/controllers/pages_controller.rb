class PagesController < ApplicationController
  def home
    current_division
  end

  def contact
  end

  def create
    cookies[:division] = params[:division]
    
    redirect_to controller: 'dashboard', action: 'index', :anchor => 'programs'
  end
end
