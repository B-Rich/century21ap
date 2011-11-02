class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string   :address
      t.string   :city
      t.integer  :zip_code
      t.integer  :price
      t.string   :status
      t.integer    :mls_number
      t.timestamps
    end
  end
end
