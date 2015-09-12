require 'rails_helper'

RSpec.describe PhoneNumber, type: :model do
  let(:phone_number) { PhoneNumber.new(number: "5055558909") }

  it 'is valid' do
    expect(phone_number).to be_valid
  end

  it 'is invalid without a number' do
    phone_number.number = nil
    expect(phone_number).to_not be_valid
  end
  # pending "add some examples to (or delete) #{__FILE__}"
end
