require 'rails_helper'

RSpec.describe PoetInformation, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  puts "Going to create"
  before(:context) do
    @info = PoetInformation.create(:poet_id => 1, :pen_name => "p1", :place => "mysore", :spouse => "w", :birth =>"1706", :father => "f", :mother => "m", :informations => "info", :about => "abt")
  end
  puts "created"
  after(:context){@info.destroy}
  puts "destroyed"
end
