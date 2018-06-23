# build.sh

(cargo) &> /dev/null || (curl https://sh.rustup.rs -sSf | sh)

cargo install radiancy
