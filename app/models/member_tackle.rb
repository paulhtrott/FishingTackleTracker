class MemberTackle < ActiveRecord::Base
  belongs_to :users
  belongs_to :tackle_type
end

