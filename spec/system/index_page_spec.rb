# frozen_string_literal: true

RSpec.describe 'Index page', type: :system do
  it 'has a sidebar of 300px and main content box-sizing is set', :aggregate_failures do
    visit '/admin/authors'

    expect(page).to have_css('nav.navigation', style: { 'width' => '300px' })
    expect(page).to have_css('.main-content__body', style: { 'box-sizing' => 'border-box' })
  end

  it 'has navigation links with the expected bounds' do
    visit '/admin/authors'

    rect = [16, 62, 268, 40]
    find_all('.navigation__link').each do |link|
      bounds = element_bounds(link)
      expect(bounds).to eq rect
      rect[1] += 40
    end
  end

  it 'has an header with h1 title and a search box with display: flex', :aggregate_failures do
    visit '/admin/authors'

    expect(page).to have_css('.main-content__header > h1', style: { 'font-size' => '28px' })
    expect(page).to have_css('.main-content__header > .search', style: { 'display' => 'flex' })
  end

  it 'has the expected styles in the main content table rows', :aggregate_failures do
    visit '/admin/authors'

    expect(page).to have_css('.main-content__body th.cell-label > a', style: { 'font-weight' => '700' })
    style = { 'font-size' => '16px', 'font-weight' => '400' }
    expect(page).to have_css('.main-content__body td.cell-data .action-show', style: style)
    expect(page).to have_css('.main-content__body .js-table-row .action-edit', style: { 'font-size' => '14px' })
    style = { 'font-size' => '14px' }
    expect(page).to have_css('.main-content__body .js-table-row [data-method="delete"]', style: style)
  end
end
