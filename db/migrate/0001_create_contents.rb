class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :name, null: false, index: true
      t.timestamps null: false
    end
  end
end
