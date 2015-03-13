class CreatePoets < ActiveRecord::Migration
  def up
    create_table :poets do |t|
      t.string "pen_name"
      t.string "name"
      t.string "sex"
      t.timestamps
    end
  end
  def down
    drop_table :poets
  end
end
