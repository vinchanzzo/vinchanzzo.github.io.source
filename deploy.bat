@echo off
echo
echo
echo Generating site...
hugo --theme=black-and-light
set /p commitMsg= Enter a commit message for the SOURCE:
echo
echo
echo Committing source...
git add --all
git commit -m "%commitMsg%"
git push -f origin master
cd public
echo
echo
echo Committing site output...
git add --all
git commit -m "%commitMsg%"
git push -f origin master
cd..
echo Done!
