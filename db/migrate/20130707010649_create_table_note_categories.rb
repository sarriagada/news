class CreateTableNoteCategories < ActiveRecord::Migration
  def up
  	create_table :note_categories do |t|
      t.integer :note_id
      t.integer :category_id
    end

  end

  def down
  end
end
