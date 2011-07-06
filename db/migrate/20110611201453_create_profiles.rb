class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.integer :user_id
      t.string :nom
      t.string :prenom
      t.string :date_lieu_naissance
      t.string :fonction
      t.string :brevet
      t.string :nationalite
      t.string :niveau_scolaire
      t.string :situation_matrimoniale
      t.integer :nombre_enfants
      t.string :numero_passeport
      t.date :validite_passeport
      t.string :numero_livret_maritime
      t.date :validite_livret
      t.string :visite_medicale
      t.date :validite_visite
      t.string :numero_cnps
      t.string :numero_cni
      t.string :numero_telephone
      t.string :adresse_postale
      t.string :lieu_residence
      t.string :nom_prenom_mere
      t.string :date_lieu_naissance_mere
      t.string :nationalite_mere
      t.string :nom_prenom_pere
      t.string :date_lieu_naissance_pere
      t.string :nationalite_pere
      t.string :nom_prenom_epouse
      t.string :date_lieu_naissance_epouse
      t.string :nationalite_epouse
      t.string :nom_prenom_correspondant
      t.string :lien_avec_travailleur
      t.string :numero_telephone_correspondant
      t.string :adresse_postale_correspondant

      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
