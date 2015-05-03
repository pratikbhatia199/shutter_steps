class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
			t.float :longitude
			t.float :latitude
			t.integer :user_id
			t.integer :description

      t.timestamps null: false
    end
		
		add_index :locations, :user_id
	end
end
