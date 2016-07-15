require 'rails_helper'
require 'entrepreneur'

RSpec.describe Entrepreneur, type: :model do

  it "must has name" do
    entrepreneur = build( :entrepreneur, :without_name )
    expect( entrepreneur ).to_not be_valid
  end

  it "must has last_names" do
    entrepreneur = build( :entrepreneur, :without_last_names )
    expect( entrepreneur ).to_not be_valid
  end

  it "name could'nt greater than 100 chars" do
    entrepreneur = build( :entrepreneur, :name_greater_than_100 )
    expect( entrepreneur ).to_not be_valid
  end

  it "last_names could'nt greater than 100 chars" do
    entrepreneur = build( :entrepreneur, :last_names_greater_than_100 )
    expect( entrepreneur ).to_not be_valid
  end

  it "name must be less than 100 chars" do
    entrepreneur = build( :entrepreneur, :name_less_than_100 )
    expect( entrepreneur ).to be_valid
  end

  it "last_names must be less than 100 chars" do
    entrepreneur = build( :entrepreneur, :last_names_less_than_100 )
    expect( entrepreneur ).to be_valid
  end

  it "must has birthdate" do
    entrepreneur = build( :entrepreneur, :without_birthdate )
    expect( entrepreneur ).to_not be_valid
  end

  it "birthdate could not be string" do
    entrepreneur = build( :entrepreneur, :birthdate_string )
    expect( entrepreneur ).to_not be_valid
  end

  it "birthdate could not has strings" do
    entrepreneur = build( :entrepreneur, :birthdate_with_strings )
    expect( entrepreneur ).to_not be_valid
  end

  it "birthdate could not be a invalid date" do
    entrepreneur = build( :entrepreneur, :birthdate_invalid )
    expect( entrepreneur ).to_not be_valid
  end
  
  it "must be equal or greater than 10 years ago" do
    entrepreneur = build( :entrepreneur, :greater_than_10_years)
    expect( entrepreneur ).to be_valid
  end

  it "doesn't must be less than 10 years ago" do
    entrepreneur = build( :entrepreneur, :less_than_10_years)
    expect( entrepreneur ).to_not be_valid
  end

  it "must has username" do
    entrepreneur = build( :entrepreneur, :with_username )
    expect( entrepreneur ).to be_valid
  end

  it "s username can't be nil" do
    entrepreneur = build( :entrepreneur, :without_username )
    expect( entrepreneur ).to_not be_valid
  end

  it "s username can't be greater than 30 chars" do
    entrepreneur = build( :entrepreneur, :with_username_greater_than_30 )
    expect( entrepreneur ).to_not be_valid
  end

  it "s username must be less than 30 chars" do
    entrepreneur = build( :entrepreneur, :with_username_less_than_30 )
    expect( entrepreneur ).to be_valid
  end

  it "s username must be uniqueness" do
    entreprenur = create( :entrepreneur )
    entrepreneur_2 = build( :entrepreneur, :username_ripper )
    expect( entrepreneur_2 ).to_not be_valid
  end

  it "s image_profile can be nil" do
    entrepreneur = create( :entrepreneur, :without_profile_image )
    expect( entrepreneur ).to be_valid
  end

  it"s image profile could be jpg" do
    entrepreneur = build( :entrepreneur, :profile_image_jpg )
    expect( entrepreneur ).to be_valid
  end

  it"s image profile could be jpeg" do
    entrepreneur = build( :entrepreneur, :profile_image_jpeg )
    expect( entrepreneur ).to be_valid
  end

  it"s image profile could be png" do
    entrepreneur = build( :entrepreneur, :profile_image_png )
    expect( entrepreneur ).to be_valid
  end

  it"s image profile couldn't be svg" do
    entrepreneur = build( :entrepreneur, :profile_image_svg )
    expect( entrepreneur ).to_not be_valid
  end

  it"s image profile couldn't be mp3" do
    entrepreneur = build( :entrepreneur, :profile_image_mp3 )
    expect( entrepreneur ).to_not be_valid
  end

  it"s image profile couldn't be docx" do
    entrepreneur = build( :entrepreneur, :profile_image_docx )
    expect( entrepreneur ).to_not be_valid
  end

  it"s image profile couldn't be txt" do
    entrepreneur = build( :entrepreneur, :profile_image_txt )
    expect( entrepreneur ).to_not be_valid
  end

  it"s image profile couldn't be extension null" do
    entrepreneur = build( :entrepreneur, :profile_image_nil_extension )
    expect( entrepreneur ).to_not be_valid
  end

  it "s web site url could be nil" do
    entrepreneur = build( :entrepreneur, :without_web_site )
    expect( entrepreneur ).to be_valid
  end

  it "s web site url must be a valid url" do
    entrepreneur = build( :entrepreneur, :with_web_site_url_invalid )
    expect( entrepreneur ).to_not be_valid
  end

  it "s twitter could be nil" do
    entrepreneur = build( :entrepreneur, :without_twitter )
    expect( entrepreneur ).to be_valid
  end

  it "s twitter must be valid twitter" do
    entrepreneur = build( :entrepreneur, :with_twitter_invalid )
    expect( entrepreneur ).to_not be_valid
  end

  it "s facebook could be nil" do
    entrepreneur = build( :entrepreneur, :without_facebook )
    expect( entrepreneur ).to be_valid
  end

  it "s linkedin could be nil" do
    entrepreneur = build( :entrepreneur, :without_linkedin )
    expect( entrepreneur ).to be_valid
  end

  it "s instagram could be nil" do
    entrepreneur = build( :entrepreneur, :without_instagram )
    expect( entrepreneur ).to be_valid
  end

  it "s cellphone could be nil" do
    entrepreneur = build( :entrepreneur, :without_cellphone )
    expect( entrepreneur ).to be_valid
  end

  it "must belongs to an institution" do
    entrepreneur = build( :entrepreneur, :with_institution )
    expect( entrepreneur ).to be_valid
  end

  it "must belongs to a profile" do
    entrepreneur = build( :entrepreneur, :with_profile )
    expect( entrepreneur ).to be_valid
  end

  it "s profile could not be nil" do
    entrepreneur = build( :entrepreneur, :without_profile )
    expect( entrepreneur ).to_not be_valid
  end

  it "could be valid entrepreeur" do
    entrepreneur = create( :entrepreneur )
    expect( entrepreneur ).to be_valid
  end



end
