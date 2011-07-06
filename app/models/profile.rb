class Profile < ActiveRecord::Base


  validates :nom, :presence => true
  #validates :prenom, :presence => true
  #validates :fonction, :presence => true
  #validates :brevet, :presence => true
  #validates :niveau_scolaire, :presence => true
  #validates :situation_matrimoniale, :presence => true
  #validates :numero_passeport, :presence => true
  #validates :numero_livret_maritime, :presence => true
  #validates :visite_medicale, :presence => true
  #validates :numero_cnps, :presence => true
  #validates :numero_cni, :presence => true
  #validates :numero_telephone, :presence => true
  #validates :nom_prenom_correspondant, :presence => true
  #validates :lien_avec_travailleur, :presence => true
  #validates :numero_telephone_correspondant, :presence => true

  scope :where_fonction, lambda { |term| where("fonction LIKE ?", "%#{term}%") }

  belongs_to :user

end
