# frozen_string_literal: true

RSpec.describe 'Bootstrap JS', type: :system do
  it 'checks that Bootstrap JS is loaded', :aggregate_failures do
    visit '/admin/authors'

    expect(page.evaluate_script('typeof bootstrap')).to eq 'object'
    expect(page.evaluate_script('bootstrap.Tooltip.VERSION')).to eq(AdministrateBootstrapTheme::BOOTSTRAP_VERSION)
  end
end
