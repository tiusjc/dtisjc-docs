cd docs
make html
cd ..
git add .
git commit -m "$1"
git push origin master
