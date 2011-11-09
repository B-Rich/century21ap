class CreateRealtors < ActiveRecord::Migration
  def change
    create_table :realtors do |t|
      t.string  :first_name
      t.string  :last_name
      t.boolean :hablo_espanol
      t.string  :title
      t.integer :license
      t.integer :extension
      t.string  :cell_number
      t.string  :email_address
      t.string  :gender
      
      t.timestamps
    end
  end
end
