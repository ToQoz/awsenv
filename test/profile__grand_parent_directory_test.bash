set -e

root=$(echo $(cd $(dirname $0);pwd))/..
cmd=$root/awsenv

cd $root/test/parent2/parent1/current
diff -u <(echo "$($cmd profile)") <(echo "parent-2__parent-1__current-1")
