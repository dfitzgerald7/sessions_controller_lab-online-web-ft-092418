class SessionsController < ApplicationController

  def new

  end

  def create
    #binding.pry
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to "/login"
    end
  end

  def destroy
    session.delete :name
    redirect_to "/"
  end

end
