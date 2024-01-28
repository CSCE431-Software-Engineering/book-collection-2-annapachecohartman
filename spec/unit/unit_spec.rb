# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(
      title: 'harry potter',
      author: 'j.k. rowling',
      price: 18.99,
      published_date: '05/05/2000',
      publisher: 'Penguin',
      pages: 500,
      release_date: '05/10/2000'
      )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a published_date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a publisher' do
    subject.publisher = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a page number' do
    subject.pages = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a release date' do
    subject.release_date = nil
    expect(subject).not_to be_valid
  end
end
