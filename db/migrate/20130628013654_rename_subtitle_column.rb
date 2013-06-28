class RenameSubtitleColumn < ActiveRecord::Migration
  def up
  	rename_column :notes, :subtitle, :summary
  end

  def down
  end
end
