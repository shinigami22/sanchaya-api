FactoryGirl.define do
  factory :vachana_sahitya do
    vachana { FFaker::Name.name}
    vachanakaara "vachanakaara1"
    pen_name "pen_name1"
    user
  end

end
