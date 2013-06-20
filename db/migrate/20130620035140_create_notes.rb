class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string   :title
      t.text     :subtitle
      t.text     :body
      t.string   :autor
      t.string   :source

      t.timestamps
    end
  end
end
