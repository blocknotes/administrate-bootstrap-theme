# Administrate Bootstrap Theme
[![gem version](https://badge.fury.io/rb/administrate-bootstrap-theme.svg)](https://badge.fury.io/rb/administrate-bootstrap-theme)
[![gem downloads](https://badgen.net/rubygems/dt/administrate-bootstrap-theme)](https://rubygems.org/gems/administrate-bootstrap-theme) 
[![linters](https://github.com/blocknotes/administrate-bootstrap-theme/actions/workflows/linters.yml/badge.svg)](https://github.com/blocknotes/administrate-bootstrap-theme/actions/workflows/linters.yml)
[![specs](https://github.com/blocknotes/administrate-bootstrap-theme/actions/workflows/specs.yml/badge.svg)](https://github.com/blocknotes/administrate-bootstrap-theme/actions/workflows/specs.yml)

A Bootstrap 5 theme for [Administrate](https://github.com/thoughtbot/administrate).

Features:
- easy to install: just run the generator installer;
- customizable via SASS variables;
- allow to use *Bootstrap* components in the admin.

See some [screenshots](#screenshots).

Please :star: if you like it.

## Installation

- Add to *Gemfile* (of an Administrate project): `gem 'administrate-bootstrap-theme', '~> 1.0'` (and execute `bundle`)
- Run the installer: `bin/rails generate administrate_bootstrap_theme:install`

## Customizations

Edit the variables define in *app/assets/stylesheets/administrate-bootstrap-theme.scss*:

```scss
$navigation-bg: #055160;
$navigation-bg-active: #d51;
$navigation-width: 300px;
$primary: #087990;

@import 'administrate-bootstrap-theme/theme';
```

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
