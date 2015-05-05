require 'rails_helper'

RSpec.describe Poem, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

 let(:poem) { FactoryGirl.build :poem }
  subject { poem }

  it { should respond_to(:name) }
  it { should respond_to(:poem) }
  it { should respond_to(:poet_id) }

end
