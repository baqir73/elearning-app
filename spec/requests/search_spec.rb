require 'rails_helper'

RSpec.describe 'Search posts', type: :feature do
  it 'should return results for a valid search query' do
    course1 = Course.create(name: 'First course')
    course2 = Course.create(name: 'Second course')
    course3 = Course.create(name: 'Third course')

    visit '/'
    fill_in 'search-input', with: 'second'
    click_button 'search-button'

    expect(page).to have_content(course2.name)
    expect(page).not_to have_content(course1.name)
    expect(page).not_to have_content(course3.name)
  end

  it 'should show a message if no results are found' do
    course1 = Course.create(name: 'First course')
    course2 = Course.create(name: 'Second course')
    course3 = Course.create(name: 'Third course')

    visit '/'
    fill_in 'search-input', with: 'fourth'
    click_button 'search-button'

    expect(page).to have_content('No results found')
  end
end
