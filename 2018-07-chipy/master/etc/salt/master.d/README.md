# Master Configuration

While the default Master config file is
`/etc/salt/master`, any files ending in `.conf` within `/etc/salt/master.d`
will also be added to the Master configuration.

## pillar.conf

This sets up the
[pillar](https://docs.saltstack.com/en/latest/topics/tutorials/pillar.html)
configuration for the Master. Pillar data is used in the
[users.jinja](https://github.com/terminalmage/talks/blob/master/2018-07-chipy/master/srv/salt/users/jinja.sls) SLS file.

## reactor.conf

This configures the events on which the [Reactor
System](https://docs.saltstack.com/en/latest/topics/reactor/) will take action.

## salt-api.conf

This enables the CherryPy-based REST interface for Salt. To create a TLS cert,
use the following masterless Salt command (requires
[PyOpenSSL](https://pypi.org/project/pyOpenSSL/) and the `salt-minion` package
to be installed):

```bash
salt-call --local tls.create_self_signed_cert
```

Note that this uses the `auto` external authentication plugin. This is used
striictly for demonstration purposes and should never be used in production,
since it will always permit the login. More usage details are in the
[slides](https://github.com/terminalmage/talks/tree/master/2018-07-chipy/ChiPy.odp).

## slack.conf

This file contains the Slack engine configuration, as well as the configuration
necsesary for the reactor configuration files to report the wtmp/btmp events.
The API keys have been obfuscated and must be replaced with your own.
Information on creating a bot user to access the API can be found in the [Slack
engine
documentation](https://docs.saltstack.com/en/latest/ref/engines/all/salt.engines.slack.html).
