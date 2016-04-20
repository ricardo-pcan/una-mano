FactoryGirl.define do
  factory :entrepreneur do
    name "Ricardo Alberto"
    last_names "Perez"
    birthdate "12/02/2016"
    #email ""
    #username ""
    #web_site_url ""
    #twitter ""
    #facebook ""
    #linkedin ""
    #instagram ""
    #cellphone ""
    #interests ""
    #password ""

    trait :without_name do
      name nil
    end

    trait :without_last_names do
      last_names nil
    end

    trait :name_greater_than_100 do
      name "a" * 101
    end

    trait :last_names_greater_than_100 do
     last_names "a" * 101
    end

    trait :name_less_than_100 do
      name "a" * 99
    end

    trait :last_names_less_than_100 do
      last_names "a" * 99
    end

    trait :without_birthdate do
      birthdate nil
    end

    trait :birthdate_string do
      birthdate "ooo"
    end

    trait :birthdate_with_strings do
      birthdate "12/UI/2018"
    end

    trait :birthdate_invalid do
      birthdate "12"
    end

    trait :greater_than_10_years do
      birthdate "23/12/2006"
    end

    trait :less_than_10_years do
      birthdate "23/12/2009"
    end

  end
end
