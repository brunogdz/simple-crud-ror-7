require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'is valid with valid attributes' do
    article = Article.new(title: 'My Article', body: 'My body text')
    expect(article).to be_valid
  end

  it 'is not valid without a title' do
    article = Article.new(body: 'My body text')
    expect(article).not_to be_valid
  end

  it 'is not valid without a body' do
    article = Article.new(title: 'My Article')
    expect(article).not_to be_valid
  end
end
