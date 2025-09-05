require 'rails_helper'

RSpec.describe Outcome, type: :model do
  it "has a valid factory" do
    expect(build(:outcome)).to be_valid
  end
end
