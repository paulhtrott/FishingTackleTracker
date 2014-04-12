class TackleType < ActiveRecord::Base
  has_many :member_tackles
  validates :name, :presence => true  
  validates :tackle_category, :presence => true

  before_destroy :ensure_not_referenced_by_any_line_item

  private

  #ensures that there are no member tackle items referencing this tackle type
  def ensure_not_references_by_any_line_item
    if member_tackles.empty?
      return true
    else
      errors.add(:base, 'Tackle items present')
      return false
    end
  end
end
