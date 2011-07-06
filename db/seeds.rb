# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
User.create(:email => 'dietricherwane@yahoo.fr', :password => 'duke', :password_confirmation => 'duke', :statut => 'Administrateur')
User.find_by_email('dietricherwane@yahoo.fr').create_profile(:nom => 'Administrateur')
Crewmanagement.create([{ :fonction => 'Commandant' }, { :fonction => 'Capitaine' }, { :fonction => 'Officier pont' }, { :fonction => 'Eleve officier pont' }, { :fonction => 'Officier radio' }, { :fonction => "Maitre d'equipage" }, { :fonction => 'Maitre commercial' }, { :fonction => 'Matelot' }, { :fonction => 'Chef mecanicien' }, { :fonction => 'Second mecanicien' }, { :fonction => 'Officier mecanicien' }, { :fonction => 'Eleve officier machine' }, { :fonction => 'Maitre electricien' }, { :fonction => 'Maitre machine' }, { :fonction => 'Ouvrier mecanicien' }, { :fonction => 'Cambusier' }, { :fonction => 'Chef cuisinier' }, { :fonction => "Maitre d'hotel" }, { :fonction => 'Garçon' }])