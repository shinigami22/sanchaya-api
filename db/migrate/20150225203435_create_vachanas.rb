class CreateVachanas < ActiveRecord::Migration
  def up
    create_table :vachanas do |t|
	t.string "Vachana_name"
	t.string "Vachana_Sahityakara"
	t.column "Vachana_year", :integer, :limit => 4
	t.timestamps null: false
    end
  end
  def down
	drop_table :vachanas
  end
end
