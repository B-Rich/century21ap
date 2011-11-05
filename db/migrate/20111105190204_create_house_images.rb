class CreateHouseImages < ActiveRecord::Migration
  def change
    create_table :house_images do |t|

      t.timestamps
    end
  end
end
