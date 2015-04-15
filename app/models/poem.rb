class Poem < ActiveRecord::Base
 searchable do
 	text :poem
 end
end
