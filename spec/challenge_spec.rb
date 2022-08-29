require "./lib/challenge"

RSpec.describe Challenge do
  subject(:challenge) { described_class.new }

  describe "#divide" do
    it "divides" do
      dividend = 100
      divisor = 10
      expected_result = 10

      result = challenge.divide(dividend, divisor)

      expect(result).to eq(expected_result)
    end
  end
end
