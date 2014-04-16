class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :votable, polymorphic: true
      t.string :ip_address, limit: 15
      t.timestamps
    end
  end
end
