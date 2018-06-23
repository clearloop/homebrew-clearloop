# build.sh

# clone radiancy
git clone https://github.com/udtrokia/Radiancy.git --depth=1

# cd path
cd radiancy

cargo &> /dev/null || (curl https://sh.rustup.rs -sSf | sh)

cargo build --release

# path
path=`pwd`
echo "PATH=\$PATH:$path/radiancy/target/release" >> ~/.bashrc
