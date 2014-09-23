require 'spec_helper'

describe Stock do
  context "disable stock" do

    let(:disable_stock) { create(:disable_stock) }

    it "return empty array " do
      expect(Stock.available).to eq []
    end
  end

  context "available stock" do

    let(:available_stock) { create(:enable_stock) }

    it "return an array of stocks" do
      expect(Stock.available).to eq([available_stock])
    end
  end
end