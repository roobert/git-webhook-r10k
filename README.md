# git-webhook-r10k

Simple service to trigger R10K from a webhook.

## Install

```
gem install grape rack thin
git clone git@github.com:roobert/git-webhook-r10k /opt/git-webhook-r10k
thin --config git_webhook_r10k.yml start
```
