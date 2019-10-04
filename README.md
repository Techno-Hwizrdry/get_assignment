# get_assignment
A bash script to retrieve the project spec and distro code for a given assignment for the CS50 game development class.  This particular script runs on Debian based linux distros, but it can be modified to run on other unix based environments.

## Dependencies
This script uses wkhtmltopdf to convert an html page to a pdf document.  If you don't have it installed, then run this command:

`sudo apt-get install wkhtmltopdf`

## Usage
This script requires the assignment number to be passed in at the command line, like so:

`./get_assignment 5`

If you wish to extract the code distro to a directory that is not in the same directory as the script, destination can also be supplied at the command line like so:

`./get_assignment 5 /home/your_username/desired/directory`
