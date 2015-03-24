require 'rails_helper'

RSpec.describe Poem, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  puts "Going to create"
  before(:context) do
    @poem = Poem.create(:poet_id => 7, :name => "p7", :poem => "poem7")
  end
  puts "created"
  after(:context){@poem.destroy}
  puts "destroyed"
end
