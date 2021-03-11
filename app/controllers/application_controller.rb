class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def valid_params(obj, *args)
    params.require(obj.to_sym).permit(*args)
  end
end
