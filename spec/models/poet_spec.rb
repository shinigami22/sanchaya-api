require 'rails_helper'

RSpec.describe Poet, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let!(:poet) { FactoryGirl.build :poet }
  subject { poet }

 # it { should respond_to(:name) }
  
  #it { should respond_to(:pen_name) }
  #it { should respond_to(:sex) }
  it { should respond_to(:id)}
  it { should validate_presence_of :name }
  it { should validate_presence_of :pen_name }
  it { should validate_presence_of :sex }
  it { should validate_presence_of :user_id }
  it { should belong_to :user }

end
