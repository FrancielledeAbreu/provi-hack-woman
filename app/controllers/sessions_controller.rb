class SessionsController < ApplicationController
  def login
    email = params.dig(:filter, :email)
    password = params.dig(:filter, :password)
    
    render json: User.where(email: email, password: password)
  end
end