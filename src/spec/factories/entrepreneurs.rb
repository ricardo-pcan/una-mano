FactoryGirl.define do

  factory :entrepreneur do
    name "Ricardo Alberto"
    last_names "Perez"
    birthdate "2001/12/23"
    email "ricardo@correo.com"
    username "ripper"
    profile_image "/var/log/http/hola.png"
    web_site_url "https://github.com/"
    twitter "@ricardo_pcan"
    profile
    institution
    password "123456"

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
      birthdate "1992/12/23"
    end

    trait :less_than_10_years do
      birthdate "2009/12/23"
    end

    trait :with_username do
      username "ripper"
    end

    trait :without_username do
      username nil
    end

    trait :with_username_greater_than_30 do
      username "a" * 31
    end

    trait :with_username_less_than_30 do
      username "a" * 29
    end

    trait :username_ripper do
      username "ripper"
    end

    trait :without_profile_image do
      profile_image  nil
    end

    trait :profile_image_svg do
      profile_image "hola.svg"
    end

    trait :profile_image_jpg do
      profile_image "hola.jpg"
    end

    trait :profile_image_jpeg do
      profile_image "hola.jpeg"
    end

    trait :profile_image_png do
      profile_image "hola.png"
    end

    trait :profile_image_mp3 do
      profile_image "hola.mp3"
    end

    trait :profile_image_docx do
      profile_image "hola.docx"
    end

    trait :profile_image_txt do
      profile_image "hola.txt"
    end

    trait :profile_image_nil_extension do
      profile_image "hola"
    end

    trait :without_web_site do
      web_site_url nil
    end

    trait :with_web_site_url_invalid do
      web_site_url "h:yuipk"
    end

    trait :without_twitter do
      twitter nil
    end

    trait :with_twitter_invalid do
      twitter "h:yuipk"
    end

    trait :without_facebook do
      facebook nil
    end

    trait :without_linkedin do
      linkedin nil
    end

    trait :without_instagram do
      instagram nil
    end

    trait :without_cellphone do
      cellphone nil
    end

    trait :with_institution do
      institution
    end

    trait :without_institution do
      institution nil
    end

    trait :with_profile do
      profile
    end

    trait :without_profile do
      profile nil
    end

    factory :entrepreneur_with_projects do
      after(:create) do |entrepreneur|
        create( :project_taka, entrepreneur: entrepreneur )
        create( :project_hebi, entrepreneur: entrepreneur )
      end
    end

  end

end
