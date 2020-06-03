require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:user) { User.create(id: 1, name: 'username') }
  let(:category) { Category.create(id: 1, name: 'categoryname', priority: 1) }
  let(:string) do
    'Lorem ipsum dolor sit amet consectetur adipiscing, elit
                  suspendisse porta in proin justo gravida, eu '
  end
  let(:article) do
    user.articles.create(id: 1, title: 'Title', text: string, category_id: category.id,
                         image: 'https://i.imgur.com/8R0jcdO.jpg')
  end
  let(:article2) do
    category.articles.create(id: 1, title: 'Title', text: string,
                             image: 'https://i.imgur.com/8R0jcdO.jpg', user_id: 2)
  end

  context 'Testing for Article presence and validation' do
    it 'Check for valid Article structure ' do
      expect(article).to be_valid
    end

    it 'Check for an invalid images input ' do
      article.image = 'image.gif'
      expect(article).not_to be_valid
    end

    it 'Checks if the Article content is present' do
      article.text = ''
      expect(article).not_to be_valid
    end

    it 'Checks if the Article title is present' do
      article.title = ''
      expect(article).not_to be_valid
    end

    it 'Checks if the Article has a user' do
      expect(article2).not_to be_valid
    end
  end
end
