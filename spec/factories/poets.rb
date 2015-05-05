FactoryGirl.define do
  factory :poet do
    name { FFaker::Name.name}
    pen_name "pen_name1"
    sex "male"
  end
end