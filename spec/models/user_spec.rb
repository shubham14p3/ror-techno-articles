require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(id: 1, name: 'user2istolong') }

  context 'Testing for User presence and validation' do
    it 'Check for valid user structure ' do
      expect(user).to be_valid
    end

    it 'Check for invalid user name size ' do
      user.name = 'a' * 100
      expect(user).not_to be_valid
    end
  end
end
