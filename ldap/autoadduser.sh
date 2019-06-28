#!/bin/bash

VAR=$(expect -c 'spawn ldapadd -x -W -D "cn=admin,dc=example,dc=org" -f devopsuser.ldif
expect "Enter LDAP Password: "
send "admin\r"
expect eof')

echo "$VAR" > output.txt
count=0
check=5
File="output.txt"
while ! grep -q "adiluck chooprateep" "$File"
do
  sleep 1
  echo "$VAR" > output.txt
  ((count+=1))
  if [ "$count" -gt "$check" ]  
  then
    break
  fi
  echo "Add user round " $count " failed"
done

if grep "adiluck chooprateep" $File; then echo "Success"; else echo "Failed"; fi

