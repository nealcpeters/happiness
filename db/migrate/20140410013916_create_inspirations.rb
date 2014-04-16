class CreateInspirations < ActiveRecord::Migration
  def change
    create_table :inspirations do |t|
    	t.string :content
    	t.integer :up, default: 0
    	t.integer :down, default: 0
    	t.timestamps
    end
  end
end
