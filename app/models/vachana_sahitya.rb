class VachanaSahitya < ActiveRecord::Base
	  validates :vachana,:pen_name,:vachanakaara,:user_id, presence: true
 belongs_to :user
 searchable do
 	text :vachanakaara, :pen_name,:id, :vachana
 end
end
