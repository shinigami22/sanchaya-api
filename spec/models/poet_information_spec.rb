require 'rails_helper'

RSpec.describe PoetInformation, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  let!(:info) do
    [ PoetInformation.create(:poet_id => 1, :pen_name => "p1", :place => "mysore", :spouse => "w", :birth =>"1706", :father => "f", :mother => "m", :informations => "info", :about => "abt"),
      PoetInformation.create(:poet_id => 2, :pen_name => "p2", :place => "dharwad", :spouse => "w2", :birth =>"1851", :father => "f2", :mother => "m2", :informations => "info2", :about => "abt2")]
  end
  it "returns a searched item if available" do
    expect(PoetInformation.search('p')).to eq(info)
  end
  it "fails for searched item which is not available" do
    expect(PoetInformation.search('k')).not_to eq(info)
  end
end
