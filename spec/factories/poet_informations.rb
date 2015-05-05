FactoryGirl.define do
  factory :poet_information do
    pen_name { FFaker::Name.name}
    place "place1"
    spouse "w1"
    father "f1"
    mother "m1"
    birth "22-06-1709"
    informations "this is info field"
    about "this is about the poet"
    poet_id "1"
  end
end