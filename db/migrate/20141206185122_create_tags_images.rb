class CreateTagsImages < ActiveRecord::Migration
  def change
    create_join_table :images, :tags do |t|
    	t.index :image_id
    	t.index :tag_id
    end
  end
end
