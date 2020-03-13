class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.string :title
      t.text :body
      t.string :category
      t.integer :user_id

      t.timestamps
    end
  end
end
