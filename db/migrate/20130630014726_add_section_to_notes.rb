class AddSectionToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :section, :integer
  end
end
