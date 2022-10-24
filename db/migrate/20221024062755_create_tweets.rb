class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.integer :monster_id
      t.string :despcripcion

      t.timestamps
    end
  end
end
