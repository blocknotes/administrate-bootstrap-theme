# frozen_string_literal: true

module Helpers
  def element_bounds(element)
    code = <<-JS_BLOCK
      function() {
        var element = document.evaluate('#{element.path}', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null);
        var rect = element.singleNodeValue.getBoundingClientRect();
        return [rect.left, rect.top, rect.width, rect.height];
      }();
    JS_BLOCK
    browser = page.driver.browser
    browser.evaluate(code)

    # alternative option: Capybara.evaluate_script(code)
  end
end
