RSpec.describe Schooly::Student do
  before(:all) do
    @john_doe = described_class.new(firstname: 'John', lastname: 'Doe')
  end

  it 'return expected id for John Doe' do
    expect(@john_doe.id).to eql('ae6e4d1209f17b460503904fad297b31e9cf6362')
  end
end
