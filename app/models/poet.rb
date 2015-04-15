class Poet < ActiveRecord::Base
 searchable do
 	text :name, :pen_name
 end
end
