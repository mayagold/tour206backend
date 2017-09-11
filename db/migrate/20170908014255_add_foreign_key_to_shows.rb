class AddForeignKeyToShows < ActiveRecord::Migration[5.1]
  def change
    add_column :shows, :venue_id, :integer
  end
end
