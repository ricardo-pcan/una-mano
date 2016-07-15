FactoryGirl.define do

  factory :profile do
    name "Student"
    description "Hola"

    trait :name_nil do
      name nil
    end

    trait :name_blank do
      name ""
    end

    trait :name_spaces do
      name " "
    end

    trait :name_capitalized do
      name "Musico"
    end

    trait :name_not_capitalized do
      name "musico barrendero"
    end

    trait :name_not_capitalized_middle do
      name "mUsIcO"
    end

    trait :description_nil do
      description nil
    end

    trait :description_greater_200 do
      description "a" * 201
    end

  end

end




