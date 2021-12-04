# Administrate Bootstrap Theme

## Old installation procedure

- Add to *Gemfile* (of an Administrate project): `gem 'administrate-bootstrap-theme'` (and execute `bundle`)
- Add to *app/assets/config/manifest.js*:

```js
//= link administrate-bootstrap-theme/theme.css
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
