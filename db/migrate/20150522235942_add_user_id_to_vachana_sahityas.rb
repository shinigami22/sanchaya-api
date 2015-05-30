class AddUserIdToVachanaSahityas < ActiveRecord::Migration
  def change
  	 add_column :vachana_sahityas, :user_id, :integer
    add_index "vachana_sahityas", ["user_id"]
  end
end
