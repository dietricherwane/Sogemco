class ProfilesController < ApplicationController


  before_filter :authenticate #, :except => [:index, :show]

  def index
    @profile = current_user.profile
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
    @selected_crew = nil
    @crew = Crewmanagement.all
  end

  def edit
    @profile = current_user.profile
    @crew = Crewmanagement.all
    @selected_crew = @profile.fonction
    if new_comer?
     @selected_crew = nil
     @profile.nom = '' #@profile.prenom = @profile.fonction = @profile.brevet = @profile.niveau_scolaire = @profile.situation_matrimoniale = @profile.numero_passeport = @profile.numero_livret_maritime = @profile.visite_medicale = @profile.numero_cnps = @profile.numero_cni = @profile.numero_telephone = @profile.nom_prenom_correspondant = @profile.lien_avec_travailleur = @profile.numero_telephone_correspndant
    end
  end

  def create
    @profile = current_user.profile.new([:profile])
    respond_to do |format|
      if @profile.save
        format.html{redirect_to(navigations_path, :notice => 'Votre profil a ete correctement enregistre.') }
      else
        format.html{render :action => "new" }
      end
    end
  end

  def update
    @fonction = Crewmanagement.find_by_id(params[:fonction_occupee][:crew_id])
    @profile = current_user.profile
    respond_to do |format|
      if @profile.update_attributes(params[:profile])
        unless @fonction.nil?
          @profile.update_attributes(:fonction => @fonction.fonction)
        end
        format.html{redirect_to navigations_path , :notice => 'Votre profil a ete correctement mis a jour.' }
      else
        format.html { render :action => "edit" }
      end
    end    
  end
  
end



