class MemberTackle < ActiveRecord::Base
  belongs_to :users, inverse_of: :member_tackles
  belongs_to :tackle_types
  
  def self.latest
    MemberTackle.group("tackle_types(tackle_category)")
  end
end

