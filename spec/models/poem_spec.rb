require 'rails_helper'

RSpec.describe Poem, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let!(:poems) do
  	[Poem.create,Poem.create,Poem.create]
  end
  it "uses match_array to match a scope" do
  		expect(Poem.all).to match_array(poems)
  	end
end
