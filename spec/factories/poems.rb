FactoryGirl.define do
  factory :poem do
    name { FFaker::Name.name}
    poem "poem1"
    poet_id "1"
  end
end