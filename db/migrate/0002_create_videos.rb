class CreateVideos < ActiveRecord::Migration
  def self.up
    execute 'CREATE TABLE videos ( ) INHERITS (contents)'
    change_table   :videos do |t|
      t.string     :aspect_ratio
      t.string     :resolution
    end
    execute 'ALTER TABLE videos ADD PRIMARY KEY (id)'
  end

  def self.down
    drop_table :videos
  end
end
