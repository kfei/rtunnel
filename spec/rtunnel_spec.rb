require 'rspec'
require 'rtunnel'

describe 'create an new connection' do

  before :each do
    @connection = Rtunnel::Connection.new
  end

  it 'should return a null connection' do
    @connection.nil?.should == false
  end
end