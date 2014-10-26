require 'spec_helper'

describe Feedback do
  let!(:feedbacks_list) { FactoryGirl.create_list(:feedback, 5) }

  describe "last four scope" do
    it "show last 4 feedbacks" do
      expect(Feedback.last_four).to eq(feedbacks_list.first(4))
    end
  end

  describe "paginated scope" do
    it "show as paginated feedbacks" do
      expect(Feedback.paginated(nil)).to eq(feedbacks_list)
    end
  end
end