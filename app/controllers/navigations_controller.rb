class NavigationsController < ApplicationController

  before_filter :authenticate, :except => [:index, :show]

  def index
    if new_comer?
      redirect_to edit_profile_path(current_user)
    else
      if administrator_logged_in?
        redirect_to users_path
      else
        @navigations = current_user.navigations.all
      end
    end
  end

  def index_admin
    if administrator_logged_in?
      @owner = User.find(params[:id])
      @navigations = @owner.navigations
      if @navigations.size.eql?(0)
        redirect_to users_path
      end
    else
      redirect_to logout_path
    end
  end

  def show
    @navigations = Navigation.find_by_id(params[:id])
  end

  def new
    if new_comer?
      redirect_to edit_profile_path(current_user), :alert => 'Veuillez compléter votre profil pour continuer.'
    else
      @navigation = Navigation.new
      @selected_crew = nil
      @crew = Crewmanagement.all
    end
  end

  def edit
    @navigation = current_user.navigations.find(params[:id])
    @crew = Crewmanagement.all
    @selected_crew = @navigation.fonction_occupee  
  end

  def create
    @navigation = current_user.navigations.new(params[:navigation])
    
    respond_to do |format|
      if @navigation.save
        format.html { redirect_to (navigations_path, :notice => 'Votre navigation a été correctement enrégistrée.') }
        format.xml  { render :xml => @navigation, :status => :created, :location => @navigation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @navigation.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    
    @fonction = Crewmanagement.find_by_id(params[:fonction_occupee][:crew_id])
    @navigation = current_user.navigations.find(params[:id])
    respond_to do |format|
      if @navigation.update_attributes(params[:navigation])
        unless @fonction.nil?
          @navigation.update_attributes(:fonction_occupee => @fonction.fonction)
        end
        format.html { redirect_to (navigations_path, :notice => 'Votre navigation a été correctement mise à jour.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
      end
    end
  end
  
end
