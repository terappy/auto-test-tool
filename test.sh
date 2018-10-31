#!/bin/sh

CMDNAME=`basename $0`

# get option
while getopts e: OPT
do
  case $OPT in
    "e" ) FLG_E="TRUE" ; VALUE_E="$OPTARG" ;;
      * ) echo "Usage: $CMDNAME [-e VALUE] PARAMETERS" 1>&2
          exit 1 ;;
  esac
done

# remove option value
shift `expr $OPTIND - 1`

# check the number of arguments
if [ $# -ne 2 ]; then
  echo "Usage: $CMDNAME classname input-file-name" 1>&2
  exit 1
fi

echo "---------------------"
echo "input is":
echo "---------------------"
cat $2

echo ""
echo "---------------------"
echo "output is":
echo "---------------------"
# decide output file name.
OUTFILE_NAME="out-$2"

# compile the target java file.
javac $1.java

# execute with input file and write result into $OUTFILE_NAME
cat $2 | java $1 > $OUTFILE_NAME
cat $OUTFILE_NAME


if [ "$FLG_E" = "TRUE" ]; then
  echo ""
  echo "---------------------"
  echo "verification result":
  echo "---------------------"

  # verification
  if diff -u $VALUE_E $OUTFILE_NAME ; then
    echo "====================="
    echo "All matched!!"
    echo "====================="
  else
    echo "====================="
    echo "Miss matched"
    echo "====================="
  fi
fi

