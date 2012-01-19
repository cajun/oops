class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :tip_id
      t.integer :user_id
      t.string :type

      t.timestamps
    end
  end
end
