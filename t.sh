#set -x

searchtext=$1
for i in `ls *.jar` 
do
  echo "searching ${searchtext} in $i"
  jar -tvf $i | grep ${searchtext}
done
