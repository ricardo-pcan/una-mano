require 'rails_helper'
require "institution"

RSpec.describe Institution, type: :model do

  it "has name" do
    institution = build(:institution, :name_null)
    institution.should_not be_valid
  end

  it "has_name_greater_than_four_caracters" do
    institution = build( :institution, :name_two_characters )
    institution.should_not be_valid
  end

  it "has name less than 100 chcaracters" do
    institution = build( :institution, :name_one_hundred_characters )
    institution.should_not be_valid
  end

  it "could not has description" do
    institution = build( :institution, :description_null )
    institution.should be_valid
  end

  it "could has description" do
    institution = build( :institution, :description_fill )
    institution.should be_valid
  end

  it "could not has description greater than 500 chars" do
    institution = build( :institution, :description_over_500_char )
    institution.should_not be_valid
  end

  it "could has description less than 500 chars" do
    institution = build( :institution, :description_less_500_chars )
    institution.should be_valid
  end

end
