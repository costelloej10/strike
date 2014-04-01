require 'spec_helper'

describe Engine do

  before do
    @engine = Engine.create!(engineName: "Tes",server: "foobar server")
  end

  subject { @engine }

  it { should respond_to(:engineName) }
  it { should respond_to(:server) }

  it { should be_valid }

  it { should have_many(:usertoengines) }
  it { should have_many(:connections) }
  it { should have_many(:users) }

  context "with a name long than 3 chars" do
    before {@engine.update_attribute(:engineName, "Test" )}
    it { should_not be_valid }
  end

  context "with the name N/A" do
    before {@engine.update_attribute(:engineName, "N/A" )}
    it { should_not be_valid }
  end

end
