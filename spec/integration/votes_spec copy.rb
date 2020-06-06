require 'rails_helper'

RSpec.describe Vote, type: :feature do
  let(:user) { User.create(id: 1, name: 'username') }
  let(:category) { Category.create(id: 1, name: 'categoryname', priority: 1) }
  let(:string) do
    'Lorem ipsum dolor sit amet consectetur adipiscing,
                  elit suspendisse porta in proin justo gravida, eu '
  end
  let(:article) do
    user.articles.create(id: 1, title: 'Title', text: string,
                         category_id: category.id, image: 'https://i.imgur.com/8R0jcdO.jpg')
  end

  let(:vote) { Vote.create(user_id: user.id, article_id: article.id) }
  let(:vote2) { Vote.create(user_id: 5, article_id: article.id) }
  let(:vote3) { Vote.create(user_id: user.id, article_id: 5) }

  context 'Testing for User and aRTICLE presence and validation' do
    it 'Check for valid vote ' do
      expect(vote).to be_valid
    end

    it 'Check if vote is valid if the user doesnt exist  ' do
      expect(vote2).not_to be_valid
    end

    it 'Check if vote is valid if the Article doesnt exist  ' do
      expect(vote3).not_to be_valid
    end
  end
end
