require 'rails_helper'

RSpec.describe EmailAddress, type: :model do
  let(:email_address) do
    EmailAddress.new(email: "joe@example.com", person_id: 1)
  end

  it 'is valid' do
    expect(email_address).to be_valid
  end

  it "is invalid without an emaill address" do
    email_address.email = nil
    expect(email_address).not_to be_valid
  end

  it "is invalid with out a person id" do
    email_address.person_id = nil
    expect(email_address).not_to be_valid
  end

  it "is is associated with a person" do
    email_address.person_id = 1
    expect(email_address).to respond_to(:person)
  end
end
