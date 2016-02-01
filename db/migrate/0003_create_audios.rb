class CreateAudios < ActiveRecord::Migration
  def self.up
    execute 'CREATE TABLE audios ( ) INHERITS (contents)'
    change_table   :audios do |t|
      t.integer :bit_depth
    end
    execute 'ALTER TABLE audios ADD PRIMARY KEY (id)'
  end

  def self.down
    drop_table :audios
  end
end
