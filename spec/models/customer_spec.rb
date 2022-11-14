require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe 'ユーザー登録' do
    it "nickname、gender、email、passwordとpassword_confirmationが存在すれば登録できること" do
      customer = build(:customer)
      expect(customer).to be_valid  # customer.valid? が true になればパスする
    end
  end
end