class AddColumnToColorStories < ActiveRecord::Migration[6.1]
  def change
    add_column :color_stories, :likes, :integer, default: 0
  end
end
