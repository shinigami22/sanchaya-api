class CreatePoetInformations < ActiveRecord::Migration
  def up
    create_table :poet_informations do |t|
      t.references :poet
      t.string "pen_name", :limit => 45
      t.string "place", :limit => 45 
      t.string "spouse", :limit => 45
      t.string "father", :limit => 45
      t.string "mother", :limit => 45
      t.date "birth"
      t.text "informations", :limit => 4294967295
      t.text "about" 
      t.timestamps null: false
    end
      add_index(:poet_informations,:poet_id)
      add_index(:poet_informations,:id)
  end
  def down
  	drop_table :poet_informations
  end
end
