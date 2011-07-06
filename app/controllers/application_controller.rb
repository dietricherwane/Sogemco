class ApplicationController < ActionController::Base
  protect_from_forgery
  protected
  # Returns the currently logged in user or nil if there isn't one
  def current_user
    return unless session[:user_id]
    @current_user ||= User.find_by_id(session[:user_id])
  end
  # Make current_user available in templates as a helper
  helper_method :current_user
  # Filter method to enforce a login requirement
  # Apply as a before_filter on any controller you want to protect
  def authenticate
    logged_in? ? true : access_denied
  end
  # Predicate method to test for a logged in user
  def logged_in?
    current_user.is_a? User
  end
  # Make logged_in? available in templates as a helper
  helper_method :logged_in?

  def administrator_logged_in?
    current_user.statut.eql?('Administrateur')
  end
  # Make administrator_logged_in? available in templates as a helper
  helper_method :administrator_logged_in?

  def user_logged_in?
    current_user.statut.eql?('Utilisateur')
  end
  # Make user_logged_in? available in templates as a helper
  helper_method :user_logged_in?

  def new_comer?
    (current_user.profile.nom == 'newcomer') && (current_user.statut == 'Utilisateur')
  end
  # Make user_logged_in? available in templates as a helper
  helper_method :new_comer?

  #def owned_bay?(owner)
  #  return true if (owner.is_a? User) && (owner.profile.user_id.eql?(owner.id)) else redirect_to navigations_path
  #end
  #helper_method :owned_bay?
  
  def access_denied
    redirect_to login_path, :notice => "Veuillez vous enregistrer pour continuer" and return false
  end
end
