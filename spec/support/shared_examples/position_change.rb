RSpec.shared_examples 'position change' do |direction|
  let(:orientation) { Orientation.new(direction) }

  it "moving to the desired location" do
    position.update(orientation, 1)
    expect(position.x).to eq(expected_position_x)
    expect(position.y).to eq(expected_position_y)
  end
  
  it "not getting off the plateau" do
    position.update(orientation, plateau.top + plateau.right)
    expect(position.x).to eq(original_position_x)
    expect(position.y).to eq(original_position_y)
  end
end
