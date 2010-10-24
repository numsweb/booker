class AddTitleToParagraph < ActiveRecord::Migration
  def self.up
    add_column :paragraphs, :title, :string
  end

  def self.down
    remove_column :paragraphs, :title
  end
end
