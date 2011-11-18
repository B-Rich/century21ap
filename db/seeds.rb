realtors = [
  {:first_name => 'Angelica',   :last_name => 'Arias',  :hablo_espanol => 'true',  :gender => 'female', :title => 'Notary Public/Realtor', :license => '01432550', :extension => '212', :cell_number => '',             :email_address => 'aarias@century21ap.com'},
  {:first_name => 'Kenneth W.', :last_name => 'Harris', :hablo_espanol => 'false', :gender => 'male',   :title => 'Broker/Owner',          :license => '00497905', :extension => '224', :cell_number => '650.796.2121', :email_address => 'kenneth@century21ap.com'}
]

realtors.each do |realtor|
  Realtor.create(realtor)
  print 'R'
end

statuses = [ { :name => 'Price Reduced!!!' }, { :name => 'Sale Pending!!!' } ]

statuses.each do |status|
  Status.create(status)
  print 'S'
end

types = [ { :name => 'For Sale' }, { :name => 'For Rent' } ]

types.each do |type|
  Type.create(type)
  print 'T'
end