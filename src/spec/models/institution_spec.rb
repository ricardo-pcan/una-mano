require "rails_helper"
require "institution"

RSpec.describe Institution, type: :model do

  it "hasnt name" do
    institution = build(:institution, :name_null)
    expect( institution ).to_not be_valid
  end


  it "has_name_greater_than_four_caracters" do
    institution = build( :institution, :name_two_characters )
    expect( institution ).to_not be_valid
  end

  it "has name less than 100 chcaracters" do
    institution = build( :institution, :name_one_hundred_characters )
    expect( institution ).to_not be_valid
  end

  it "could not has description" do
    institution = build( :institution, :description_null )
    expect( institution ).to be_valid
  end

  it "could has description" do
    institution = build(:institution, :description_fill)
    expect( institution ).to be_valid
  end

  it "could not has description greater than 500 chars" do
    institution = build(:institution, :description_over_500_char)
    expect( institution ).to_not be_valid
  end

  it "could has description less than 500 chars" do
    institution = build(:institution, :description_less_500_chars)
    expect( institution ).to be_valid
  end

  it "must be admin" do
    institution = build(:institution, :with_admin)
    expect( institution ).to be_valid
  end

  it "could not hasnt admin" do
    institution = build(:institution, :without_admin)
    expect( institution ).to_not be_valid
  end

  it "must has alias" do
    institution = build(:institution, :with_alias)
    expect( institution ).to be_valid
  end

  it "couldn't has alias nil" do
    institution = build(:institution, :without_alias)
    expect( institution ).to_not be_valid
  end

  it "couldn't has alias greater than 20 chars" do
    institution = build(:institution, :alias_greater_than_20_char)
    expect( institution ).to_not be_valid
  end

  it "could has alias less than 20 chars" do
    institution = build(:institution, :alias_less_than_20_char)
    expect( institution ).to be_valid
  end

  it "could has image profile" do
    institution = build(:institution, :with_image_profile)
    expect( institution ).to be_valid
  end

  it "could has not image profile" do
    institution = build(:institution, :without_image_profile)
    expect( institution ).to be_valid
  end

  it "could has not image profile path less than 10 chars" do
    institution = build(:institution, :with_image_profile_path_less_10)
    expect( institution ).to_not be_valid
  end

  it "could create" do
    institution = create(:institution)
    expect( institution ).to be_valid
  end

end
