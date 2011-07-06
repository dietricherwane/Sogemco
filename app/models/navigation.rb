class Navigation < ActiveRecord::Base

  validates :compagnie, :presence => true
  validates :navire, :presence => true
  #validates :pavillon, :presence => true
  validates :type_navire, :presence => true
  #validates :fonction_occupee, :presence => true

  belongs_to :user

  #scope :where_fonction, lambda { |term| where("navigations.fonction_occupee LIKE ?", "%#{term}%") }

  def owned_by?(owner)
    #return false unless owner.is_a? User
    return false unless (owner.is_a? User) && (owner.profile.user_id.eql?(owner.id))
    user == owner
  end

end
