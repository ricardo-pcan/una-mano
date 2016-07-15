require 'rails_helper'
require 'profile'
RSpec.describe Profile, type: :model do

  it "must not has name with blanks" do
    profile = build( :profile, :name_spaces )
    expect( profile ).to_not be_valid
  end

  it "must not has name nil" do
    profile = build( :profile, :name_nil )
    expect( profile ).to_not be_valid
  end

  it "must not has name blank" do
    profile = build( :profile, :name_blank )
    expect( profile ).to_not be_valid
  end

  it "s name must not be no capitalized" do
    profile = build( :profile, :name_not_capitalized )
    expect( profile ).to_not be_valid
  end

  it "s name must not be no capitalized in the middle" do
    profile = build( :profile, :name_not_capitalized_middle )
    expect( profile ).to_not be_valid
  end

  it "must have capitalized name" do
    profile = build( :profile, :name_capitalized )
    expect( profile ).to be_valid
  end

  it "s description could be nil" do
    profile = build( :profile, :description_nil )
    expect( profile ).to be_valid
  end

  it "s description must has max 200 chars" do
    profile = build( :profile, :description_greater_200 )
    expect( profile ).to_not be_valid
  end

end
