# build.sh

# clone radiancy
git clone https://github.com/udtrokia/Radiancy.git --depth=1

# cd path
cd radiancy

cargo &> /dev/null || (curl https://sh.rustup.rs -sSf | sh)

cargo build --release

# path
echo "PATH=$PATH:pwd/target/release" >> ~/.bashrc
