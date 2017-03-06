set -e

root=$(echo $(cd $(dirname $0);pwd))/..
cmd=$root/awsenv

cd $root/test/current
diff -u <(echo "$($cmd profile)") <(echo "current-1")
