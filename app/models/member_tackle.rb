class MemberTackle < ActiveRecord::Base
  belongs_to :user
  belongs_to :tackle_type
  
  has_attached_file :tackle_img, styles: { thumb: '100x100>', medium: '300x300>' }
  validates_attachment_content_type :tackle_img, :content_type => /\Aimage\/.*\Z/
  validates_attachment_size :tackle_img, :in => 0..10.megabytes

  def self.latest
    MemberTackle.group("tackle_types(tackle_category)")
  end
end

