RSpec.shared_examples 'orientation rotation' do |starting_direction|
  let(:orientation_1) { Orientation.new(starting_direction) }
  let(:orientation_2) { Orientation.new(starting_direction) }

  it "rotates left correctly" do
    orientation_1.rotate(:L)
    expect(orientation_1.direction).to eq(expected_direction_left)
  end

  it "rotates right correctly" do
    orientation_2.rotate(:R)
    expect(orientation_2.direction).to eq(expected_direction_right)
  end
end
