#!/bin/sh

set -ex

cargo build --verbose --all
cargo test --verbose --all

cd example
python setup.py develop
./test.py
