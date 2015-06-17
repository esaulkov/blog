class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :user, foreign_key: true
      t.references :poll_item, foreign_key: true

      t.timestamps null: false
    end
  end
end
