class MemberTackle < ActiveRecord::Base
  belongs_to :users
  belongs_to :tackle_type
  
  def self.latest
    MemberTackle.group("tackle_types(tackle_category)")
  end
end

