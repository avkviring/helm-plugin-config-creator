#!/bin/bash
RUSTFLAGS="-C linker=x86_64-linux-musl-gcc -Ctarget-cpu=haswell -Ctarget-feature=+avx2" cargo build --release --target x86_64-unknown-linux-musl
cargo build --release
cp target/x86_64-unknown-linux-musl/release/cheetah-config-creator cheetah-config-creator-linux
cp target/release/cheetah-config-creator cheetah-config-creator-macos
