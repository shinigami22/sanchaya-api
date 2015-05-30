class CreateVachanaSahityas < ActiveRecord::Migration
  def up
    create_table :vachana_sahityas do |t|
      t.text "vachana",  :limit => 4294967295
      t.string "vachanakaara"
      t.string "pen_name"
      t.timestamps
    end
  end
  def down
    drop_table :vachana_sahityas
  end
end
