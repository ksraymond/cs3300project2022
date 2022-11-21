# require 'rails_helper'
# RSpec.describe Project, type: :model do
#   it "has a valid description" do
#     expect(Project.description).to be_valid
#   end
# end

require "rails_helper"

RSpec.describe Project, type: :model do
  context "scopes tests" do
    let(:params) { { title: "Title", description: "some description" } }
    before(:each) do
      Project.create(params)
      Project.create(params)
      Project.create(params)
    end

    # it "has a valid description" do
    #   expect(Project.description).to be_valid
    # end

    it "should return all projects" do
      expect(Project.count).to eq(3)
    end
      
  end
end