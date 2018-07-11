# Beacons

This SLS file deploys very simple configurations for the wtmp and btmp beacons,
which will fire events for all logins. While the default Minion config file is
`/etc/salt/minion`, any files ending in `.conf` within `/etc/salt/minion.d`
will also be added to the Minion configuration.
