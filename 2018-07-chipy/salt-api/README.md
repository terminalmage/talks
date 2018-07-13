# Helper Scripts for salt-api

These scripts are helpers which I wrote to show how to invoke salt-api commands
using curl. Note that the login script uses the `auto` eauth plugin, which
should never be used in production as it always permits the login.

Additionally, the `chipy-api-command` script requires input in JSON format,
instead of using `-d key=value` for each parameter.
