require 'rails_helper'

RSpec.describe Poet, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let!(:poet) { FactoryGirl.build :poet }
  subject { poet }

  it { should respond_to(:name) }
  it { should respond_to(:pen_name) }
  it { should respond_to(:sex) }

end
