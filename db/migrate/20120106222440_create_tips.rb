class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :explaination
      t.string :fobar
      t.string :user
      t.integer :votes, :default => 0

      t.timestamps
    end
  end
end
