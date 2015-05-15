class Poet < ActiveRecord::Base
  validates :name,:pen_name,:sex,:user_id, presence: true
 belongs_to :user
 searchable do
 	text :name, :pen_name
 end
end
