require 'rails_helper'

RSpec.describe Project, type: :model do

  it "s name could not be nil" do
    project = build( :project, :name_nil )
    expect( project ).to_not be_valid
  end

  it "must has name" do
    project = build( :project )
    expect( project ).to be_valid
  end

  it "s name must be unique" do
    project = create( :project )
    project_equal = build( :project, :same_name )
    expect( project_equal ).to_not be_valid
  end

  it "s description could not be nil" do
    project = build( :project, :description_nil )
    expect( project ).to_not be_valid
  end

  it "s description could not be less than 50 chars" do
    project = build( :project, :description_less_50 )
    expect( project ).to_not be_valid
  end

end
