class SessionsController < ApplicationController
  def destroy
    session[:user_id] = nil # so main_controller will have index action fail
    redirect_to root_path, notice: "Logged out"
  end
end
