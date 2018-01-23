#!/usr/bin/env bash

if [[ -n "$1" ]]; then
    cp -i resources/State.json State.json
else
    cp -i resources/State.yaml State.yaml
fi

cp -i resources/after.sh after.sh
cp -i resources/aliases aliases

echo "StateLines initialized!"
