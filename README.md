This repository contains a battery of test cases for the Holberton simple shell. Each file has a unique role.

To use this test suite, enter your `holberton-simple_shell` directory and clone this repository ; enter the new directory afterward.

`git clone git@github.com:magicaldave/HSH-test_suite.git`

`cd HSH-test_suite`

All scripts are built assuming that the project files are in the parent directory, or ".."

You can change this and store this repo elsewhere by changing the "SHELLDIR" variable in each of the provided scripts.

###READMEREADER.SH

This script will check for the existence of your README, man, and AUTHORS files in that order, creating them if they don't exist and nagging you if they're empty. If all three of those checks pass, the betty linter is ran on all files ending in `.c` and `.h` in the $SHELLDIR directory.

