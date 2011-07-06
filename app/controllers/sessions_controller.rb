class SessionsController < ApplicationController

  def create
    if user = User.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      redirect_to navigations_path, :notice => 'Connexion réussie'
    else
      flash.now[:alert] = "Combinaison login/mot de passe invalide"
      render :action => 'new'
    end
  end

  def destroy
    reset_session
    redirect_to login_path, :notice => 'Déconnecté'
  end
end
