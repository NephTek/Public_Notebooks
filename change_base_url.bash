#!/usr/bin/env bash

if [ "$#" == "0" ]
then
  find . -type f -print | grep -v $0 | xargs sed -i 's/k8s\.nephtek\.com/dank.k8s.nephtek.com/g'
  find . -type f -print | grep -v $0 | xargs sed -i 's/k8s-nephtek-com/dank-k8s-nephtek-com/g'
elif [ "$#" == "1" ]
then
  find $1 -type f -print | grep -v $0 | xargs sed -i 's/k8s\.nephtek\.com/dank.k8s.nephtek.com/g'
  find $1 -type f -print | grep -v $0 | xargs sed -i 's/k8s-nephtek-com/dank-k8s-nephtek-com/g'
elif [ "$#" == "2" ]
then
  tostring=$2
  tostring1=$(sed 's/\./\\./g' <<< "$tostring")
  tostring2=$(sed 's/\./-/g' <<< "$tostring")
  echo $tostring1
  echo $tostring2
  find $1 -type f -print | grep -v $0 | xargs sed -i "s/k8s\.nephtek\.com/$tostring1/g"
  find $1 -type f -print | grep -v $0 | xargs sed -i "s/k8s-nephtek-com/$tostring2/g"
elif [ "$#" == "3" ]
then
  fromstring=$2
  fromstring1=$(sed 's/\./\\./g' <<< "$fromstring")
  fromstring2=$(sed 's/\./-/g' <<< "$fromstring")
  echo $fromstring1
  echo $fromstring2
  tostring=$3
  tostring1=$tostring
  tostring2=$(sed 's/\./-/g' <<< "$tostring")
  echo $tostring1
  echo $tostring2
  find $1 -type f -print | grep -v $0 | xargs sed -i "s/$fromstring1/$tostring1/g"
  find $1 -type f -print | grep -v $0 | xargs sed -i "s/$fromstring2/$tostring2/g"
  #find "$1" -type f -print | grep -v $0 | xargs sed -i "s/$2/$3/g"
else
  fromstring=$2
  fromstring1=$(sed 's/\./\\./g' <<< "$fromstring")
  fromstring2=$(sed 's/\./-/g' <<< "$fromstring")
  echo $fromstring1
  echo $fromstring2
  tostring=$3
  tostring1=$tostring
  tostring2=$(sed 's/\./-/g' <<< "$tostring")
  echo $tostring1
  echo $tostring2
  echo "find $1 -type f -print | grep -v $0 | xargs sed -i 's/$fromstring1/$tostring1/g'"
  echo "find $1 -type f -print | grep -v $0 | xargs sed -i 's/$fromstring2/$tostring2/g'"
fi
#find . -type f -print | xargs sed -i 's/k8s.nephtek.com/dank.k8s.nephtek.com/g'