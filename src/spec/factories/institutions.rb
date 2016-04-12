FactoryGirl.define do

  factory :admin do
    username "ramiro"
    email "ramiro.p@gmail.com"
    password "123456"
  end

  factory :institution do
    name "Universidad Autónoma del Estado de México"
    admin
    institution_alias "Hola"


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

    # Admin factories

    trait :with_admin do
      admin
    end

    trait :without_admin do
      admin nil
    end

    # Alias factories

    trait :with_alias do
      institution_alias "q"
    end

    trait :without_alias do
      institution_alias nil
    end

    trait :alias_greater_than_20_char do
      institution_alias "a" * 21
    end

    trait :alias_less_than_20_char do
      institution_alias "a" * 15
    end

  end
end
