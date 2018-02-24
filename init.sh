git submodule init
git submodule status | awk '{print $2}' | xargs -P5 -n1 git submodule update --remote
