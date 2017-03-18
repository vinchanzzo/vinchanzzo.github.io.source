@echo off
echo "Generating site..."
hugo --theme=paperback
set /p commitMsg= Enter a commit message for the SOURCE:
echo "Committing source..."
git add --all
git commit -m "%commitMsg%"
cd public
set /p commitMsg= Enter a commit message for the OUTPUT:
git add --all
git commit -m "%commitMsg%"
git push -f origin master
cd..
echo "Done!"
