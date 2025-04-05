CURRENT_BRANCH=$(git branch --show-current)

if [[ "$CURRENT_BRANCH" != feat-* ]]; then
  echo "A branch atual não é uma feature (feat-*)"
  exit 1
fi

FEATURE_BRANCH=$CURRENT_BRANCH
git checkout master
git merge $FEATURE_BRANCH
git branch -d $FEATURE_BRANCH
git push origin --delete $FEATURE_BRANCH
