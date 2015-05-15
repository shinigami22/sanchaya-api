class AddUserIdToPoets < ActiveRecord::Migration
  def change
    add_column :poets, :user_id, :integer
    add_index "poets", ["user_id"]
  end
end
