class AddGenreReferences < ActiveRecord::Migration
  def change
    add_column :videos, :genre_id, :integer, null: false
    add_column :audios, :genre_id, :integer, null: false
  end
end
