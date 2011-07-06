# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
User.create(:email => 'dietricherwane@yahoo.fr', :password => 'dukenukemdie', :password_confirmation => 'dukenukemdie', :statut => 'Administrateur')
#Crewmanagement.create([{ :fonction => 'Commandant' }, { :fonction => 'Capitaine' }, { :fonction => 'Officier pont' }, { :fonction => 'Elève officier pont' }, { :fonction => 'Officier radio' }, { :fonction => "Maitre d'équipage" }, { :fonction => 'Maitre commercial' }, { :fonction => 'Matelot' }, { :fonction => 'Chef mécanicien' }, { :fonction => 'Second mécanicien' }, { :fonction => 'Officier mécanicien' }, { :fonction => 'Elève officier machine' }, { :fonction => 'Maitre électricien' }, { :fonction => 'Maitre machine' }, { :fonction => 'Ouvrier mécanicien' }, { :fonction => 'Cambusier' }, { :fonction => 'Chef cuisinier' }, { :fonction => "Maitre d'hotel" }, { :fonction => 'Garçon' }])