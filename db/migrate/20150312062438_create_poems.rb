class CreatePoems < ActiveRecord::Migration
  def up
    create_table :poems do |t|
      t.references :poet
      t.string "name"
      t.text "poem", :limit => 4294967295
      t.timestamps
    end
    add_index(:poems,:poet_id)
  end
  def down
    drop_table :poems
  end
end
