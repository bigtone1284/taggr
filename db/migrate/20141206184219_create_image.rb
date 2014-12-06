class CreateImage < ActiveRecord::Migration
  def change
    create_table :images do |t|
    	t.string :img_url
			t.references :location
			t.references :user

			t.timestamps
    end
  end
end
