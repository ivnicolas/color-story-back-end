class CreateColorStories < ActiveRecord::Migration[6.1]
  def change
    create_table :color_stories do |t|
      t.string :title
      t.string :description
      t.belongs_to :user, null: false, foreign_key: true
      t.string :color_code
      t.datetime :date
      t.integer :likes, default: 0

      t.timestamps
    end
  end
end
