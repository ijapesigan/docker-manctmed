#!/bin/bash

git clone git@github.com:ijapesigan/docker-manctmed.git
rm -rf "$PWD.git"
mv docker-manctmed/.git "$PWD"
rm -rf docker-manctmed
