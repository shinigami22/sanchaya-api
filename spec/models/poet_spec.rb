require 'rails_helper'

RSpec.describe Poet, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  
    puts "Going to create"
    before(:context) do
      @poem = Poem.create(:pen_name => "p1", :name => "name", :sex => "male")
    end
    puts "created"
    after(:context){@poem.destroy}
    puts "destroyed"
    
 
end
