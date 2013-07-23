class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource_or_scope)
    edit_user_registration_path(resource_or_scope)
  end

end
