#!/bin/zsh

rm config.yaml
curl https://update.glados-config.com/clash/167867/694165b/78993/glados-terminal.yaml > config.yaml
clash -d .
