# Administrate Bootstrap Theme
[![gem version](https://badge.fury.io/rb/administrate-bootstrap-theme.svg)](https://badge.fury.io/rb/administrate-bootstrap-theme)
[![gem downloads](https://badgen.net/rubygems/dt/administrate-bootstrap-theme)](https://rubygems.org/gems/administrate-bootstrap-theme) 
[![linters](https://github.com/blocknotes/administrate-bootstrap-theme/actions/workflows/linters.yml/badge.svg)](https://github.com/blocknotes/administrate-bootstrap-theme/actions/workflows/linters.yml)
[![specs](https://github.com/blocknotes/administrate-bootstrap-theme/actions/workflows/specs.yml/badge.svg)](https://github.com/blocknotes/administrate-bootstrap-theme/actions/workflows/specs.yml)

A Bootstrap 5 theme for [Administrate](https://github.com/thoughtbot/administrate).

Features:
- easy to install, just include CSS/JS to apply the theme to a default Administrate structure;
- customizable via SASS variables;
- allow to use *Bootstrap* components in the admin.

See some [screenshots](#screenshots).

Please :star: if you like it.

## Installation

- Add to *Gemfile* (of an Administrate project): `gem 'administrate-bootstrap-theme'` (and execute `bundle`)
- Add to *app/assets/config/manifest.js*:

```js
//= link administrate-bootstrap-theme/theme.css
//= link administrate-bootstrap-theme/theme.js
```

- Generate the layout views if they are missing: `rails generate administrate:views:layout` (only **_stylesheet** and **_javascript** partials are needed)
- Update *app/views/admin/application/_stylesheet.html.erb*, leaving only:

```erb
<%= stylesheet_link_tag 'administrate-bootstrap-theme/theme', media: 'all' %>
<%= yield :stylesheet %>
```

- Update *app/views/admin/application/_javascript.html.erb*, leaving only:

```erb
<%= javascript_include_tag 'administrate-bootstrap-theme/theme' %>
<%= yield :javascript %>
```

## Customizations

To change variables it's necessary to create a new *.scss* (or *.sass*) file like this one (ex. *admin.scss*):

```scss
// app/assets/stylesheets/admin.scss
$navigation-bg: #055160;
$navigation-bg-active: #d51;
$navigation-width: 300px;
$primary: #087990;

@import 'administrate-bootstrap-theme/theme';
```

And replace the link tag in the *application.html.erb* with: `<%= stylesheet_link_tag 'admin', media: 'all' %>`

For the complete list of options take a look [here](app/assets/stylesheets/administrate-bootstrap-theme/_variables.scss).

## Screenshots

- Index page: ![Administrate Bootstrap Theme index page](extra/screenshot_index.png)
- Show page: ![Administrate Bootstrap Theme show page](extra/screenshot_show.png)
- Form page: ![Administrate Bootstrap Theme edit page](extra/screenshot_edit.png)
- Index page with some customized colors: ![Administrate Bootstrap Theme index page customized](extra/screenshot_index_alt.png)

## Do you like it? Star it!

If you use this component just star it. A developer is more motivated to improve a project when there is some interest.

Or consider offering me a coffee, it's a small thing but it is greatly appreciated: [about me](https://www.blocknot.es/about-me).

## Contributors

- [Mattia Roccoberton](https://blocknot.es/): author

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
