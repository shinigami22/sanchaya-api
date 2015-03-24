class Poet < ActiveRecord::Base
	scope :search, lambda {|query|
    where([" name LIKE ? OR pen_name LIKE ?", "%#{query}%","%#{query}%"])}
end
