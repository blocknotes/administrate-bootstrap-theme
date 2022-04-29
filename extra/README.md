# Development

```sh
# Running specs without headless mode:
CUPRITE_HEADLESS=0 bin/rspec
```

## Releases

```sh
# Update version.rb with the new version
# Update the gemfiles:
bin/appraisal
```

## Tests using Docker

```sh
# Run specs by Ruby version
docker-compose up tests_26
docker-compose up tests_27
docker-compose up tests_30
```

## Bootstrap update

```sh
# Update bootstrap locally
yarn upgrade
# Overwrite the current bootstrap sources
cp node_modules/bootstrap/dist/js/bootstrap.bundle.js app/assets/javascripts/administrate-bootstrap-theme/bootstrap.bundle.js
rm -rf app/assets/stylesheets/administrate-bootstrap-theme/bootstrap
cp -r node_modules/bootstrap/scss app/assets/stylesheets/administrate-bootstrap-theme/bootstrap
```
