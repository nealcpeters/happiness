class CreateInspirations < ActiveRecord::Migration
  def change
    create_table :inspirations do |t|
    	t.string :content
    	t.integer :up
    	t.integer :down
    	t.timestamps
    end
  end
end
