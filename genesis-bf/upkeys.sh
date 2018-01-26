#!/bin/sh
for i in $(seq 2 $1)
do
 key=`cat /s/s1/KeyID`
 prKey1=`cat /s/s1/PrivateKey`
 prKey2=`cat /s/s$i/PrivateKey`
 keyID1=`cat /s/s1/KeyID`
 pubKey1=`cat /s/s1/PublicKey`
 keyID2=`cat /s/s$i/KeyID`
 pubKey2=`cat /s/s$i/PublicKey`
 host1=127.0.0.1
 httpPort1=7001
 python3 /apla-tests/scripts/updateKeys.py "$prKey1" "$host1" "$httpPort1" "$keyID2" "$pubKey2" "100000000000000000000"
done

