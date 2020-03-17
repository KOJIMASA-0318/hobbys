class CreateCategoryTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :category_topics do |t|
      t.string :category_id
      t.string :topic_id

      t.timestamps
    end
  end
end
