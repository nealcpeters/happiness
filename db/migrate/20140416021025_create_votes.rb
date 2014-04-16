class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :votable_id
      t.string :votable_type
      t.string :ip_address, limit: 15
      t.timestamps
    end
  end
end
