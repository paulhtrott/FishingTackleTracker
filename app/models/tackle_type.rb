class TackleType < ActiveRecord::Base
  validates :name, :presence => true  
  validates :tackle_category, :presence => true
end
