class Listing < ActiveRecord::Base
  belongs_to :realtor
  
  has_many :house_images, :dependent => :destroy
  
  accepts_nested_attributes_for :house_images, :reject_if => lambda { |t| t['house_image'].nil? }
end
