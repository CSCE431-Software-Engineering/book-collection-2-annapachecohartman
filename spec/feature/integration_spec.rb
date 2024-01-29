# location: spec/feature/integration_spec.rb
require 'rails_helper'


RSpec.describe 'Creating a book with blank title', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    # fill_in "book[title]", with: ''
    # fill_in "book[author]", with: 'j.k. rowling'
    # fill_in "book[price]", with: 18.99
    # fill_in "book[published_date]", with: Date.today.strftime('%Y-%m-%d')
    # fill_in "book[publisher]", with: 'Penguin'
    # fill_in "book[pages]", with: 500
    # fill_in "book[release_date]", with: Date.today.strftime('%Y-%m-%d')
    click_on "Create Book"



    visit books_path
    puts page.body


    expect(page).not_to have_content("Book was successfully created.")
    # expect(page).to have_content("Book could not be created.")



  end
end


RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[author]", with: 'j.k. rowling'
    fill_in "book[price]", with: 18.99
    fill_in "book[published_date]", with: Date.today.strftime('%Y-%m-%d')
    fill_in "book[publisher]", with: 'Penguin'
    fill_in "book[pages]", with: 500
    fill_in "book[release_date]", with: Date.today.strftime('%Y-%m-%d')
    click_on "Create Book"

    visit books_path

    expect(page).to have_content('harry potter')
    expect(page).to have_content('j.k. rowling')
    expect(page).to have_content('18.99')
    expect(page).to have_content(Date.today.strftime('%Y-%m-%d'))
    expect(page).to have_content('Penguin')
    expect(page).to have_content('500')
    expect(page).to have_content(Date.today.strftime('%Y-%m-%d'))
  end
end
