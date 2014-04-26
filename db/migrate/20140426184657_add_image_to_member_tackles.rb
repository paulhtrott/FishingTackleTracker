class AddImageToMemberTackles < ActiveRecord::Migration
  def change
   add_attachment :member_tackles, :tackle_img
  end
  
  def self.up
    add_attachment :member_tackles, :tackle_img
  end

  def self.down
    remove_attachment :member_tackles, :tackle_img
  end
end
