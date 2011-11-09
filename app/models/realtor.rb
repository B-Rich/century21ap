class Realtor < ActiveRecord::Base
  has_many :listings
  
  def full_name; [first_name, last_name].join(' ') end
  alias :to_s :full_name
end
