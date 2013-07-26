class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource_or_scope)
    edit_user_registration_path(resource_or_scope)
  end

  def validate_admin
    unless current_user.try(:admin) == true
      redirect_to root_url, notice: 'You must be an admin to do that'
    end
  end

end
