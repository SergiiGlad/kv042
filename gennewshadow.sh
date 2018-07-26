#!/bin/bash
#
# generate new shadow file with NEW PASSWORD for existing USER
#
# ./gennewshadow USER NEWPASSWD


if [ "$1" == "" ] && [ "$2" == "" ]; then
echo "You should type gennewshadow USER NEWPASSWD"
exit 1
fi

USER=$1
NEWPASS=$2


if [ "$(grep "$USER" /etc/passwd | cut -f1 -d:)" != "$USER" ]; then
echo "$USER no found in /etc/passwd"
exit 1
fi

PHASH=$(grep $USER /etc/shadow | cut -f2 -d : )

if [ "$PHASH" == "*" ] || [ "$PHASH" == "!" ]; then 
SALT="$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c13)"
echo "PICKED UP NEW SALT $SALT"
else
SALT=$(grep $USER /etc/shadow | cut -f3 -d $)
fi

NEWHASH=$(perl -e 'print crypt ("'${NEWPASS}'","\$6\$'${SALT}'\$"),"\n"')

echo "PICKED UP NEW HASH $NEWHASH" 
echo "File /etc/shadow.new with user $USER and new password"
echo "You should replace /etc/shadow  "

cat /etc/shadow | sed "s@${PHASH}@${NEWHASH}@" > /etc/shadow.new
