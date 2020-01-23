rm -rf ./out || exit
cd ./rs || exit
rm target/release/wasm32-unknown-unknown/rs.wat
cargo build --release || exit
# wasm2wat target/wasm32-unknown-unknown/release/rs.wasm -o target/wasm32-unknown-unknown/release/rs.wat || exit
cd ../ && mkdir out || exit
cp rs/target/wasm32-unknown-unknown/release/rs.wasm out/main.wasm