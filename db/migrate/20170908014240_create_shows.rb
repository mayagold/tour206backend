class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.string :headliner
      t.string :openers
      t.date :date
      t.time :time
      t.integer :price
      t.boolean :soldout
      t.string :genre
      t.string :ages

      t.timestamps
    end
  end
end
