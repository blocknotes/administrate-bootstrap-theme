# frozen_string_literal: true

RSpec.describe 'Show page', type: :system do
  it 'has attribute labels and links without text-decoration', :aggregate_failures do
    visit "/admin/authors/#{Author.last.id}"

    expect(page).to have_css('.main-content__body .attribute-label', style: { 'min-height' => '32px' })
    expect(page).to have_css('.main-content__body .attribute-data > a', style: { 'text-decoration-line' => 'none' })
  end
end
