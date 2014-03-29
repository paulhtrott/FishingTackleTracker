class TackleType < ActiveRecord::Base
  validates :name, :presence => true  

  TACKLE_CATEGORIES = [ "Accessories", "Boating", "Electronics", "Fly Fishing", "Lures", "Reels", "Rods", "Terminal Tackle" ]
  
end
