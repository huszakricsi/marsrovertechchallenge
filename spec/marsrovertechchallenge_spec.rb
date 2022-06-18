RSpec.describe Marsrovertechchallenge do
  include_context 'stdout'

  let(:expected_output) { ["\"1 3 N\"", "\"5 1 E\""] }
  let(:expected_visualised_output) do
    ["[\" \", \" \", \" \", \" \", \" \"]",
    "[\" \", \" \", \" \", \" \", \" \"]",
    "[\" \", \" \", \"E\", \" \", \" \"]",
    "[\"N\", \" \", \" \", \" \", \" \"]",
    "[\" \", \" \", \" \", \" \", \" \"]",
    "\"-------------------------\"",
    "[\" \", \" \", \" \", \" \", \" \"]",
    "[\" \", \" \", \" \", \" \", \" \"]",
    "[\"N\", \" \", \" \", \" \", \" \"]",
    "[\" \", \" \", \" \", \" \", \" \"]",
    "[\" \", \" \", \" \", \" \", \"E\"]",
    "\"1 3 N\"",
    "\"5 1 E\""]
  end

  it "works correctly with EXAMPLE environment variable set to true" do
    ENV['EXAMPLE'] = 'true'
    Marsrovertechchallenge::Application.new

    stdout.rewind
    lines = stdout.string.split("\n")

    expect(lines).to eq(expected_output)
  end

  it "works correctly with INPUT environment variable set to a user provided input file" do
    ENV['INPUT'] = './resources/input.txt'
    Marsrovertechchallenge::Application.new

    stdout.rewind
    lines = stdout.string.split("\n")

    expect(lines).to eq(expected_output)
  end

  it "works correctly with EXAMPLE environment variable set to true and Visualising the result" do
    ENV['EXAMPLE'] = 'true'
    ENV['VISUALISE'] = 'true'
    Marsrovertechchallenge::Application.new

    stdout.rewind
    lines = stdout.string.split("\n")

    expect(lines).to eq(expected_visualised_output)
  end

end
