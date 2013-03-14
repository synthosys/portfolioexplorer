class PagesController < ApplicationController
  def home
  end

  def contact
  end

  def create
    cookies[:division] = params[:division]
    
    redirect_to controller: 'dashboard', action: 'index', :anchor => 'programs'
  end
end
