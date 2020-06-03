require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { Category.create(id: 1, name: 'category_name', priority: 1) }

  context 'Testing for Category presence and validation' do
    it 'Check for valid category structure ' do
      expect(category).to be_valid
    end

    it 'Check for invalid name length ' do
      category.name = 'a' * 21
      expect(category).not_to be_valid
    end

    it 'Check for invalid priority ' do
      category.priority = 6
      expect(category).not_to be_valid
    end
  end
end
