class CreateStories < ActiveRecord::Migration[7.2]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :story

      t.timestamps
    end
  end
end
