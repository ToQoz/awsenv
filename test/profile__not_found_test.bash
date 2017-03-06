set -e

root=$(echo $(cd $(dirname $0);pwd))/..
cmd=$root/awsenv

cd $root/test
diff -u <(echo "$($cmd profile)") <(echo "default")
