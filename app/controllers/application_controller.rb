class ApplicationController < ActionController::Base
  protect_from_forgery
  after_filter :store_location

  # def after_sign_in_path_for(resource_or_scope)
  #   edit_user_registration_path(resource_or_scope)
  # end

  def validate_admin
    unless current_user.try(:admin)
      redirect_to root_url, notice: 'You must be an admin to do that'
    end
  end

  def validate_200_or_1000_account
    unless current_user.try(:subcription_level) == "200" || current_user.try(:subcription_level) == "1000"
      redirect_to :back, notice: 'You must be a paying customer to do that'
    end
  end

  def store_location
    # store last url as long as it isn't a /users path
    session[:previous_url] = request.fullpath unless request.fullpath =~ /\/users/
  end

  def after_sign_in_path_for(resource)
    if session[:previous_url] =~ /\/categories/ || session[:previous_url] =~ /\/products/
      session[:previous_url]
    else
      edit_user_registration_path(resource)
    end
  end

end
