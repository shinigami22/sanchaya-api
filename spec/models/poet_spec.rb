require 'rails_helper'

RSpec.describe Poet, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let!(:poets) do
    [ Poet.create(:pen_name => "p1", :name => "name", :sex => "male"),
      Poet.create(:pen_name => "p1", :name => "name", :sex => "male")]
  end
  it "returns a searched item if available" do
    expect(Poet.search('p')).to eq(poets)
  end
  it "fails for searched item which is not available" do
    expect(Poet.search('k')).not_to eq(poets)
  end
end
