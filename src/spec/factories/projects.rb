FactoryGirl.define do
  factory :project do
    name  {"Test" }
    description "Test"

    trait :name_nil do
      name nil
    end

    trait :equal_name do
      name  { name }
    end


  end
end
