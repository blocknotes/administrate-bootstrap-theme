# frozen_string_literal: true

RSpec.describe 'Theme', type: :system do
  let!(:authors) { 3.times { |i| Author.create!(name: "Author #{i}", email: 'some@email.com', age: 30) } }

  after do
    Author.delete_all
  end

  it 'checks that the theme is loaded' do
    visit '/admin/authors'

    expect(page).to have_css('nav.navigation', style: { 'width': '250px' })
    expect(page).to have_css('.main-content__header > h1', style: { 'font-size': '25.6px' })
    expect(page).to have_css('.main-content__header > .search', style: { 'display': 'flex' })
    expect(page).to have_css('.main-content__body', style: { 'box-sizing': 'border-box' })
    expect(page).to have_css('th.cell-label > a', style: { 'font-weight': '700' })
  end
end
