require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  before { @user = FactoryGirl.build(:user)}

  subject { @user }

  it { should validate_presence_of(:email)}
  it { should validate_uniqueness_of(:email)}
  it { should validate_confirmation_of(:password)}
  it { should allow_value('example@domain.com').for(:email)}

  it {should be_valid}
end
