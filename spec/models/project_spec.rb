require 'rails_helper'
RSpec.describe Project, type: :model do
  it "has a valid description" do
    expect(Project.description).to be_valid
  end
end