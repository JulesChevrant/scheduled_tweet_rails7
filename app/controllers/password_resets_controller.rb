class PasswordResetsController < ApplicationController
  def new # only render the form
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?
      # Send email with Action Mailer
      PasswordMailer.with(user: @user).reset.deliver_later
    end
    redirect_to root_path, notice: "If an account with that email was found, a link to reset your password has been sent."
  end
end
