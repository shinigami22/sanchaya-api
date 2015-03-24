class PoetInformation < ActiveRecord::Base
	scope :search, lambda {|query|
    where([" pen_name LIKE ? OR place LIKE ? OR spouse LIKE ? OR father LIKE ? OR mother LIKE ? OR birth LIKE ? OR informations LIKE ? OR about LIKE ?", "%#{query}%","%#{query}%","%#{query}%","%#{query}%","%#{query}%","%#{query}%","%#{query}%","%#{query}%"])}
end
