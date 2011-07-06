class UsersController < ApplicationController

  before_filter :authenticate, :only => []

  def index
    #@users = User.all
    @users = User.find_all_by_statut ('Utilisateur')
    @tab_color = true
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      @user.update_attribute :statut, 'Utilisateur'
      @user.create_profile(:nom => 'newcomer') #,:prenom => 'newcomer', :fonction => 'newcomer', :brevet => 'newcomer', :niveau_scolaire => 'newcomer', :situation_matrimoniale => 'newcomer', :numero_passeport => 'newcomer', :numero_livret_maritime => 'newcomer', :visite_medicale => 'newcomer', :numero_cnps => 'newcomer', :numero_cni => 'newcomer', :numero_telephone => 'newcomer', :nom_prenom_correspondant => 'newcomer', :lien_avec_travailleur => 'newcomer', :numero_telephone_correspondant => 'newcomer'
      redirect_to login_path, :notice => 'Veuillez entrer vos identifiants.'
    else
      render :action => 'new'
    end
  end

  def edit
    if new_comer?
      redirect_to edit_profile_path(current_user), :alert => 'Veuillez completer votre profil pour continuer.'
    else
      @user = current_user
    end
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to navigations_path, :notice => 'Votre profil a ete mis à jour.'
    else
      render :action => 'edit'
    end
  end

  def index_crewmanagement

  end

  def personnel
    @fonction = params[:id]
    @profiles = Profile.find_all_by_fonction(@fonction)
    if @profiles.size.eql?(0)
      redirect_to crewmanagement_path
    end
  end

end
