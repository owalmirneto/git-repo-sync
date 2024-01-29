# GitLab repository syncronizer

GitLab repository syncronizer enables you to synchronize code to other code management platforms, such as GitLab, Gitee, etc. Default: GitLab

## Try GitLab repository syncronizer

You can use the following example as a template to create a new file with any name under `.github/workflows/` OR just looking [.github/workflows/gitlab-synchronizer.yml](.github/workflows/gitlab-synchronizer.yml)

```yaml
# Such as GitLab Synchronizer
name: <action-name>

on: [push, delete]

jobs:
  sync:
    runs-on: ubuntu-latest
    name: GitLab repository syncronization
    steps:
    - uses: actions/checkout@v2
      with:
        fetch-depth: 0
    - uses: owalmirneto/gitlab-sync@v0.1.2
      with:
        # Such as github.com. Default: gitlab.com
        target-domain: <target-domain>
        # Such as owalmirneto
        target-username: <target-username>
        # Such as gitlab-sync
        target-repository: <target-repository>
        # You can store token in your project's 'Setting > Secrets' and
        # reference the name here. Such as ${{ secrets.ACCESS_TOKEN }}
        target-token: ${{ secrets.GITLAB_ACCESS_TOKEN }}
```
