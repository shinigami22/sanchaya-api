class CreatePoets < ActiveRecord::Migration
  def up
    create_table :poets do |t|
      t.string "pen_name", :limit => 45
      t.string "name", :limit => 45
      t.string "sex", :limit => 45
      t.timestamps null: false
    end
     add_index(:poets,:id)
  end
  def down
  	 drop_table :poets
  end
end
