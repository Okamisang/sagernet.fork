#!/bin/bash

mkdocs build
echo "sagernet.org" > site/CNAME
mkdocs gh-deploy -m "{sha}" --ignore-version --dirty --force
