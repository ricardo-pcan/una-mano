FactoryGirl.define do
  factory :project do
    name  "Test"
    description "Test"

    trait :name_nil do
      name nil
    end

    trait :same_name do
      name "Test"
    end

    trait :name_greater_10 do
      name "a" * 11
    end

    trait :name_less_10 do
      name "a" * 10
    end

    trait :description_nil do
      description nil
    end

    trait :description_greater_50 do
      description "a" * 21
    end

    trait :description_less_50 do
      description "a" * 49
    end

  end

end
