#!/usr/bin/env bash

shelldir=".."

BADREADME="-1"
BADMAN="-2"
BADAUTHORS="-3"

if [ -e $shelldir/README.md ]
then echo "Your readme exists! Let's see if it's empty."

     length=$(wc -c $shelldir/README.md | awk '{print $1}')

     if [ $length -eq 0 ]
     then echo "Your readme is empty, lazybones."
	  exit $BADREADME

     else echo -e "Nope!\n\n\n"
	  cat $shelldir/README.md
     fi

else echo "There is no README here."

     touch $shelldir/README.md

     echo -e "I made one for you.\nNow go put something in it!"

     exit $BADREADME

fi

if [ -e $shelldir/man_1_simple_shell ]
then echo "Your man page exists! Let's see if it's empty."

     length=$(wc -c $shelldir/man_1_simple_shell | awk '{print $1}')

     if [ $length -eq 0 ]
     then echo "Your man page is empty, lazybones."
	  exit $BADMAN

     else echo -e "Nope!\n\n\n"
	  cat $shelldir/man_1_simple_shell
     fi

else echo "There is no man page here."

     touch $shelldir/man_1_simple_shell

     echo -e "I made one for you.\nNow go put something in it!"

     exit $BADMAN

fi

if [ -e $shelldir/AUTHORS ]
then echo "Your authors file exists! Let's see if it's empty."

     length=$(wc -c $shelldir/AUTHORS | awk '{print $1}')

     if [ $length -eq 0 ]
     then echo "Your AUTHORS is empty, lazybones."

	  exit $BADAUTHORS

     else echo -e "Nope!\n\n\n"
	  cat $shelldir/AUTHORS
     fi

else echo "There is no AUTHORS file here."

     touch $shelldir/AUTHORS

     echo -e "I made one for you.\nNow go put something in it!"

     exit $BADAUTHORS

fi

betty $shelldir/*.c $shelldir/*.h
