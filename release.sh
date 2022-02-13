#!/bin/bash

mkdocs build
echo "non" > site/CNAME
mkdocs gh-deploy -m "{sha}" --ignore-version --dirty || true
cd site
git fetch origin gh-pages
git push origin gh-pages --force
