set -e

root=$(echo $(cd $(dirname $0);pwd))/..
cmd=$root/awsenv

cd $root/test/parent1/current
diff -u <(echo "$($cmd profile)") <(echo "parent-1__current-1")
