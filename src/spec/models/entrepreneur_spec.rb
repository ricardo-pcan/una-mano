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
  
  it "greater than 10 years ago" do
    entrepreneur = build( :entrepreneur, :greater_than_10_years )
    entrepreneur.should be_valid
  end

end
