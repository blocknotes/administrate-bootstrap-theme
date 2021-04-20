# frozen_string_literal: true

RSpec.describe 'Theme', type: :system do
  def element_bounds(element)
    # document.querySelector('#{element}');
    Capybara.evaluate_script <<-JS_BLOCK
       function() {
         var element = document.evaluate('#{element.path}', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null);
         var rect = element.singleNodeValue.getBoundingClientRect();
         return [rect.left, rect.top, rect.width, rect.height];
       }();
    JS_BLOCK
  end

  it 'checks that the theme is loaded' do
    visit '/admin/authors'

    expect(page).to have_css('nav.navigation', style: { 'width': '250px' })
    expect(page).to have_css('.main-content__header > h1', style: { 'font-size': '25.6px' })
    expect(page).to have_css('.main-content__header > .search', style: { 'display': 'flex' })
    expect(page).to have_css('.main-content__body', style: { 'box-sizing': 'border-box' })
    expect(page).to have_css('th.cell-label > a', style: { 'font-weight': '700' })
  end

  it 'checks the navigation elements' do
    visit '/admin/authors'

    rect = [16, 62, 218, 40]
    find_all('.navigation__link').each do |link|
      bounds = element_bounds(link)
      expect(bounds).to eq rect
      rect[1] += 40
    end
  end
end
