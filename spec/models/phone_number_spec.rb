require 'rails_helper'

RSpec.describe PhoneNumber, type: :model do
  let(:phone_number) { PhoneNumber.new(number: "5055558909", person_id: 1) }

  it 'is valid' do
    expect(phone_number).to be_valid
  end

  it 'is invalid without a number' do
    phone_number.number = nil
    expect(phone_number).to_not be_valid
  end

  it "needs to be attached to a person" do
    phone_number.person_id = nil
    expect(phone_number).not_to be_valid
  end

  it "is is associated with a person" do
    phone_number.person_id = 1
    expect(phone_number).to respond_to(:person)
  end

end
