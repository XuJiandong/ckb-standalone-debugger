

# usage:
# bash ckb-standalone-debugger/bins/tools/run-without-syscall.sh <path-to-file>

dir=$(dirname "${BASH_SOURCE[0]}")

# to run script which doesn't call any syscalls
# All arguments except "-r" is to make tool happy.
$dir/../target/debug/ckb-debugger -l 127.0.0.1:1234 --tx-file=$dir/../../tests/programs/sample.json \
--cell-index=0 \
--script-group-type=lock \
--cell-type=input \
-r "$1"
