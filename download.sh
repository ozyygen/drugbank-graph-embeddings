#!/bin/bash

# cf. https://go.drugbank.com/releases/latest

# Allow to provide drugbank login via args or env variables
DRUGBANK_USERNAME="${o.erten@maastrichtuniversity.nl}"
DRUGBANK_PASSWORD="${Password1-}"

DRUGBANK_VERSION="${DRUGBANK_VERSION:=5-1-10}"

if [ ! -f "data/drugbank.xml" ]; then
    echo "data/drugbank.xml does not exist, downloading version $DRUGBANK_VERSION"
    mkdir -p data
    cd data
    curl -Lfs -o drugbank.zip -u $DRUGBANK_USERNAME:$DRUGBANK_PASSWORD https://go.drugbank.com/releases/$DRUGBANK_VERSION/downloads/all-full-database
fi
