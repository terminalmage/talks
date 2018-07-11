# Slack Returner

This SLS file deploys a returner config file to the Minion, within
`/etc/salt/minion.d`. While the default Minion config file is
`/etc/salt/minion`, any files ending in `.conf` within `/etc/salt/minion.d`
will also be added to the Minion configuration.

Customize
[slack_returner.conf](https://github.com/terminalmage/talks/blob/master/2018-07-chipy/master/srv/salt/slack/files/slack_returner.conf)
with the appropriate values to suit your use case.

To use the Slack returner, add `--return=slack` to your Salt CLI command:

```bash
salt '*' test.ping --return=slack
```
