# get_assignment
A bash script to retrieve the project spec and distro code for a given assignment for the CS50 game development class.  This particular script runs on Debian based linux distros, but it can be modified to run on other unix based environments.

I wanted a more convenient way to download and unzip the code distro for each assignment.  Also, I wanted to save the project spec as a pdf so I could reference it if I'm working without an internet connection. 

## Dependencies
This script uses wkhtmltopdf to convert an html page to a pdf document.  [Installation binaries of wkhtmltopdf](https://wkhtmltopdf.org/downloads.html) are available for Windows, CentOS, and macOS.  To install on Debian or Ubuntu, run this command:

`sudo apt-get install wkhtmltopdf`

## Usage
This script requires the assignment number to be passed in at the command line, like so:

`./get_assignment 5`

If you wish to extract the code distro to a directory that is not in the same directory as the script, destination can also be supplied at the command line like so:

`./get_assignment 5 /home/your_username/desired/directory`

If a destination directory is not supplied, then this script will extract the assignment distro it's current directory.
