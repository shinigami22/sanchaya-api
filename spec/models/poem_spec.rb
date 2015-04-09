require 'rspec/autorun'
require 'rails_helper'

RSpec.describe Poem, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  let!(:poems) do
    [Poem.create(poet_id:1,name: 'p1',poem: 'poem1'),
     Poem.create(poet_id:2,name: 'p2',poem: 'poem2')]
  end
  it "returns a searched item if available" do
    expect(Poem.search('p')).to eq(poems)
  end
  it "fails for searched item which is not available" do
    expect(Poem.search('k')).not_to eq(poems)
  end
end
