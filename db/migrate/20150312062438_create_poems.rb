class CreatePoems < ActiveRecord::Migration
  def up
    create_table :poems do |t|
 		t.references :poet
 		t.string "name", :limit => 45
 		t.text "poem", :limit => 4294967295
        t.timestamps null: false
    end
     add_index(:poems,:poet_id)
     add_index(:poems,:id)
  end
  def down
  	drop_table :poems
  end
end
