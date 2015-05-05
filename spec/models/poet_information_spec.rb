require 'rails_helper'

RSpec.describe PoetInformation, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  let!(:poet_information) { FactoryGirl.build :poet_information }
  subject { poet_information }

  it { should respond_to(:pen_name) }
  it { should respond_to(:place) }
  it { should respond_to(:spouse) }
  it { should respond_to(:father) }
  it { should respond_to(:mother) }
  it { should respond_to(:birth) }
  it { should respond_to(:informations) }
  it { should respond_to(:about) }
  it { should respond_to(:poet_id) }

end
