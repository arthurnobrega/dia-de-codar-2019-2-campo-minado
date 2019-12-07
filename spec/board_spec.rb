require_relative '../board'

RSpec.describe 'Board' do
  it 'initializes board' do
    expect(Board.new).to be_truthy
  end
end