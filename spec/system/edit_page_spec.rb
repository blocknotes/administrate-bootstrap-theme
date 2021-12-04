# frozen_string_literal: true

RSpec.describe 'Edit page', type: :system do
  it 'has field labels with a dashed bottom border' do
    visit "/admin/authors/#{Author.last.id}/edit"

    attrs = { 'border-bottom-width' => '1px', 'border-bottom-style' => 'dashed' }
    expect(page).to have_css('.field-unit label', style: attrs)
  end
end
