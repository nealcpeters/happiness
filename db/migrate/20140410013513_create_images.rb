class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :path
      t.integer :up, default: 0
      t.integer :down, default: 0
      t.timestamps
    end
  end
end
