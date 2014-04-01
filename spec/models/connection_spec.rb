require 'spec_helper'

describe Connection do

  before do
    @connection = Connection.create!(engineName: "XYZ", senderComp: "12", targetComp: "13", ip: "13", port: 222)
  end

  subject { @connection }

  it { should respond_to(:engineName) }
  it { should respond_to(:senderComp) }
  it { should respond_to(:targetComp) }
  it { should respond_to(:ip) }
  it { should respond_to(:port) }

  it { should be_valid }

  it { should belong_to(:engines) }

end
