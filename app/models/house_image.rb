class HouseImage < ActiveRecord::Base
  belongs_to :listing
  
  has_attached_file :photo, :styles => { :thumb => "154x109>", :large => "805x605>"}
  
  validates_attachment_presence :photo
end
