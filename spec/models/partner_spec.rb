require 'rails_helper'

describe Partner do
  let!(:enabled_partner) { create :partner }
  let!(:disabled_partner) { create :partner, enabled: false }

  it "show all enabled partner" do
    expect(Partner.enabled).to eq([enabled_partner])
  end
end