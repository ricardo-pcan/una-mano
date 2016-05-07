require 'rails_helper'
require 'entrepreneur'

RSpec.describe Entrepreneur, type: :model do

  it "must has name" do
    entrepreneur = build( :entrepreneur, :without_name )
    entrepreneur.should_not be_valid
  end

  it "must has last_names" do
    entrepreneur = build( :entrepreneur, :without_last_names )
    entrepreneur.should_not be_valid
  end

  it "name could'nt greater than 100 chars" do
    entrepreneur = build( :entrepreneur, :name_greater_than_100 )
    entrepreneur.should_not be_valid
  end

  it "last_names could'nt greater than 100 chars" do
    entrepreneur = build( :entrepreneur, :last_names_greater_than_100 )
    entrepreneur.should_not be_valid
  end

  it "name must be less than 100 chars" do
    entrepreneur = build( :entrepreneur, :name_less_than_100 )
    entrepreneur.should be_valid
  end

  it "last_names must be less than 100 chars" do
    entrepreneur = build( :entrepreneur, :last_names_less_than_100 )
    entrepreneur.should be_valid
  end

  it "must has birthdate" do
    entrepreneur = build( :entrepreneur, :without_birthdate )
    entrepreneur.should_not be_valid
  end

  it "birthdate could not be string" do
    entrepreneur = build( :entrepreneur, :birthdate_string )
    entrepreneur.should_not be_valid
  end

  it "birthdate could not has strings" do
    entrepreneur = build( :entrepreneur, :birthdate_with_strings )
    entrepreneur.should_not be_valid
  end

  it "birthdate could not be a invalid date" do
    entrepreneur = build( :entrepreneur, :birthdate_invalid )
    entrepreneur.should_not be_valid
  end
  
  it "must be equal or greater than 10 years ago" do
    entrepreneur = build( :entrepreneur, :greater_than_10_years)
    entrepreneur.should be_valid
  end

  it "doesn't must be less than 10 years ago" do
    entrepreneur = build( :entrepreneur, :less_than_10_years)
    entrepreneur.should_not be_valid
  end

  it "must has username" do
    entrepreneur = build( :entrepreneur, :with_username )
    entrepreneur.should be_valid
  end

  it "s username can't be nil" do
    entrepreneur = build( :entrepreneur, :without_username )
    entrepreneur.should_not be_valid
  end

  it "s username can't be greater than 30 chars" do
    entrepreneur = build( :entrepreneur, :with_username_greater_than_30 )
    entrepreneur.should_not be_valid
  end

  it "s username must be less than 30 chars" do
    entrepreneur = build( :entrepreneur, :with_username_less_than_30 )
    entrepreneur.should be_valid
  end

  it "s username must be uniqueness" do
    entreprenur = create( :entrepreneur )
    entrepreneur_2 = build( :entrepreneur, :username_ripper )
    entrepreneur_2.should_not be_valid
  end

end
