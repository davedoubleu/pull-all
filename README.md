# pull-all
A bash script that treats all 1st level sub-directories as git repositories and performs a git pull in each.

The repositories are pulled to confirm they are up to date.

Up to 2 pull attempts are made to sync the repository, which can be;

* Already up to date

* Out of date (in which case it pulled again)

* Broken

# Errors
Are reported as "Something Broke!"

If the subfolder is not a repository, an error is reported.
