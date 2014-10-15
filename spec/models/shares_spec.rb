require "spec_helper"

describe Share do
  context "disable share" do
    let(:disabled_share) { create :share, :disabled }

    it "return an empty array" do
      expect(Share.available).to eq []
    end
  end

  context "available share" do
    let(:available_share) { create :share }

    it "return an array of shares" do
      expect(Share.available).to eq([available_share])
    end
  end
end