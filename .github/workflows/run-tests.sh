CUR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $CUR_DIR/../../setupEnvironment.sh
cd examples/AccLattice_Tests
./START.sh lattice_test.py 2
