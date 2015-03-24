class Poem < ActiveRecord::Base
	scope :search, lambda {|query|
    where([" name LIKE ? OR poem LIKE ?", "%#{query}%","%#{query}%"])}
end
