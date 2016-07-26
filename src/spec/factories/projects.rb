FactoryGirl.define do
  factory :project do
    name  "Test"
    description "Test" * 50
    entrepreneur

    trait :name_nil do
      name nil
    end

    trait :same_name do
      entrepreneur nil
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
      description "a" * 100
    end

    trait :description_less_50 do
      description "a" * 49
    end

    trait :without_entrepreneur do
      entrepreneur nil
    end

    factory :project_taka do
      name "Taka"
      description "a" * 57
    end

    factory :project_hebi do
      name "Hebi"
      description "a" * 57
    end

  end

end
