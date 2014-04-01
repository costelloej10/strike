require 'spec_helper'

describe User do

  before do
    @user = User.new(username: "ExampleUser",
                     password: "foobar", password_confirmation: "foobar")
  end

  subject { @user }

  it { should respond_to(:username) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }

  it { should be_valid }

  it { should have_many(:usertoengines) }
  it { should have_many(:engines) }

end
