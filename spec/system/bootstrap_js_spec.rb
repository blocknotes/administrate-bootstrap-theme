# frozen_string_literal: true

RSpec.describe 'Bootstrap JS', type: :system do
  it 'checks that Bootstrap JS is loaded' do
    visit '/admin/authors'

    expect(Capybara.evaluate_script('typeof bootstrap')).to eq 'object'
  end
end
