class CreateParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|

      t.timestamps
    end
  end
end
