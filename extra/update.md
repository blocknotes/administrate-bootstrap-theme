# Update

```sh
yarn upgrade
cp node_modules/bootstrap/dist/js/bootstrap.bundle.js app/assets/javascripts/administrate-bootstrap-theme/bootstrap.bundle.js
rm -rf app/assets/stylesheets/administrate-bootstrap-theme/bootstrap
cp -r node_modules/bootstrap/scss app/assets/stylesheets/administrate-bootstrap-theme/bootstrap
```
