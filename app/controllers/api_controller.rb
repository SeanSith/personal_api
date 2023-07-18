class ApiController < ApplicationController

  private

  def authenticate_user
    head :unauthorized unless request.authorization == 'Bearer password'
  end
end
