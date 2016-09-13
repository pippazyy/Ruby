class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :album
      t.string :artist
      t.string :song
      t.string :favorite
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
