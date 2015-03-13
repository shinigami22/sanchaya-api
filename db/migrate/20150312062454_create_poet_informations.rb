class CreatePoetInformations < ActiveRecord::Migration
  def up
    create_table :poet_informations do |t|
      t.references :poet
      t.string "pen_name"
      t.string "place"
      t.string "spouse"
      t.string "father"
      t.string "mother"
      t.date "birth"
      t.text "informations", :limit => 4294967295
      t.text "about"
      t.timestamps
    end
    add_index(:poet_informations,:poet_id)
  end
  def down
    drop_table :poet_informations
  end
end
