class Spanish < ActiveRecord::Migration
  def up
    change_table :realtors do |t|
      t.boolean :spanish
    end
    
    drop_table :active_admin_comments
  end
end
