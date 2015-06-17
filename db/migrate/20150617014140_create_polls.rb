class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :question
      t.references :post, foreign_key: true

      t.timestamps null: false
    end
  end
end
