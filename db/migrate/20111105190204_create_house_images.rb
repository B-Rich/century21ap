class CreateHouseImages < ActiveRecord::Migration
  def change
    create_table :house_images do |t|
      t.string :caption
      t.belongs_to :listing
      t.timestamps
    end
  end
end
