class CreatePollItems < ActiveRecord::Migration
  def change
    create_table :poll_items do |t|
      t.string :answer
      t.integer :votes_count
      t.references :poll, foreign_key: true

      t.timestamps null: false
    end
  end
end
