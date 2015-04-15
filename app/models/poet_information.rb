class PoetInformation < ActiveRecord::Base
	searchable do
 	text :place,:pen_name,:informations,:about
 end
end
