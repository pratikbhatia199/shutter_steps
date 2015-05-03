class AddLocationIdAndTitleToPhotos < ActiveRecord::Migration
  def change
		add_column :photos, :location_id, :integer
		add_column :photos, :title, :string
		add_index :photos, :user_id
		add_index :photos, :location_id
  end
end
