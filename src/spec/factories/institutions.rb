FactoryGirl.define do
  factory :institution do
    name "Universidad Autónoma del Estado de México"


    trait :name_null do
      name ""
    end

    trait :name_two_characters do
      name "Ho"
    end

    trait :name_one_hundred_characters do
      name "a" * 101
    end

    #Description factories

    trait :description_null do
      description ""
    end

    trait :description_fill do
      description "Hi whats your name? My name is Joan and you?"
    end

    trait :description_over_500_char do
      description "a" * 501
    end

    trait :description_less_500_chars do
      description "a" * 499
    end

  end
end
