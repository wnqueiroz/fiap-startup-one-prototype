#/bin/sh

cd packages/ms-appointment
git stash -u
git checkout main
git pull --rebase
cd ../../

cd packages/ms-company
git stash -u
git checkout main
git pull --rebase
cd ../../

cd packages/ms-user
git stash -u
git checkout main
git pull --rebase
cd ../../

git checkout main
git add packages/
git commit -m "chore: updating submodules revisions"
git push
