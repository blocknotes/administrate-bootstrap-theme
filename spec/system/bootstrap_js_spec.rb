# frozen_string_literal: true

RSpec.describe 'Bootstrap', type: :system do
  it 'has a bootstrap JS object defined including Tooltip.VERSION', :aggregate_failures do
    visit '/admin/authors'

    expect(page.evaluate_script('typeof bootstrap')).to eq 'object'
    expect(page.evaluate_script('bootstrap.Tooltip.VERSION')).to eq(AdministrateBootstrapTheme::BOOTSTRAP_VERSION)
  end
end
