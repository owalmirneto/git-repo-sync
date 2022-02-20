CREDENTIALS="${TARGET_USERNAME}:${TARGET_TOKEN}";
REPO_HOST="${TARGET_DOMAIN}/${TARGET_USERNAME}/${TARGET_REPOSITORY}";

git remote add target https://${CREDENTIALS}@${REPO_HOST}.git;

case $GITHUB_EVENT_NAME in
  push)
    git push -f --all target && git push -f --tags target
    ;;
  delete)
    git push -d target ${GITHUB_CURRENT_BRANCH};
    ;;
  *)
    break
    ;;
esac
