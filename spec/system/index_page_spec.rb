# frozen_string_literal: true

RSpec.describe 'Index page', type: :system do
  it 'checks some generic elements styles (=> the theme is loaded)' do
    visit '/admin/authors'

    expect(page).to have_css('nav.navigation', style: { 'width' => '250px' })
    expect(page).to have_css('.main-content__body', style: { 'box-sizing' => 'border-box' })
  end

  it 'checks the position of the navigation menu items' do
    visit '/admin/authors'

    rect = [16, 62, 218, 40]
    find_all('.navigation__link').each do |link|
      bounds = element_bounds(link)
      expect(bounds).to eq rect
      rect[1] += 40
    end
  end

  it 'checks some page header styles' do
    visit '/admin/authors'

    expect(page).to have_css('.main-content__header > h1', style: { 'font-size' => '25.6px' })
    expect(page).to have_css('.main-content__header > .search', style: { 'display' => 'flex' })
  end

  it 'checks some page body table styles' do
    visit '/admin/authors'

    expect(page).to have_css('.main-content__body th.cell-label > a', style: { 'font-weight' => '700' })
    expect(page).to have_css('.main-content__body td.cell-data .action-show', style: { 'font-size' => '16px', 'font-weight' => '400' })
    expect(page).to have_css('.main-content__body .js-table-row .action-edit', style: { 'font-size' => '14px' })
    expect(page).to have_css('.main-content__body .js-table-row [data-method="delete"]', style: { 'font-size' => '14px' })
  end
end
