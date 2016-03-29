class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.integer  :viewable_id, :null => false
      t.string   :viewable_type, :limit => 50, :null => false
      t.string :label
      t.text :text
      t.integer :position
      t.attachment :image
      t.timestamps
    end
  end
end
