class HomeController < ApplicationController
  
  #Valída Sesiones de Usuarios
  before_filter :authenticate_user!,  :user_signed_in?

  def index

  end
end
