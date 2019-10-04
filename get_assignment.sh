#!/bin/bash
#  Author:  Alexan Mardigian
#  Version: 0.1v
#
#  This bash script will retrieve the assignment spec and distro code
#  for a given assignment, for the CS50 game development class.
#  
#  NOTE:  This script uses wkhtmltopdf to convert an html page to a pdf document.
#         If you don't have it installed, then run this command:
#                 sudo apt-get install wkhtmltopdf


ASSNUM=$1             # Assignment number
CURYEAR=`date +"%Y"`  # Current year
ASSURL="https://docs.cs50.net/games/${CURYEAR}/x/assignments/${ASSNUM}/assignment${ASSNUM}.html"
DISTRO_DEST=$2
DISTRO_ZIP="assignment${ASSNUM}.zip"
DISTRO_URL="https://cdn.cs50.net/games/${CURYEAR}/x/assignments/${ASSNUM}/${DISTRO_ZIP}"

# If no zip destination path was provided, then use the current directory of this script.
if [ -z "$DISTRO_DEST" ]
then
	DISTRO_DEST=`pwd`
fi

# Avoid clutter in the code distro, put the asssignment pdf
# one directory level above the code distro.
OUTPUT_PDF="${DISTRO_DEST}/assignment${ASSNUM}.pdf"

wkhtmltopdf $ASSURL $OUTPUT_PDF

echo
echo "PDF for assignment ${ASSNUM} generated."
echo "Retrieving distro code now..."
echo

wget $DISTRO_URL
unzip -q $DISTRO_ZIP -d $DISTRO_DEST

echo "Done!"
echo "Folder for assignment ${ASSNUM} have been extracted to ${DISTRO_DEST}"
echo
echo "You're all set."
echo "Happy coding!  :)"
echo
