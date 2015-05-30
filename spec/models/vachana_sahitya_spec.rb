require 'rails_helper'

RSpec.describe VachanaSahitya, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it { should respond_to(:id)}
  it { should validate_presence_of :vachana}
  it { should validate_presence_of :vachanakaara }
  it { should validate_presence_of :pen_name }
  it { should validate_presence_of :user_id }
  it { should belong_to :user }
end
