# Restarting the `salt-minion` Daemon

This SLS file is included in a couple other files, to be used to trigger a
service restart when new minion configuration files are added.

Having Salt restart itself isn't as straightforward as it may sound. This is
because of how Salt works. The master publishes a job and waits for results,
but having the `salt-minion` daemon restart itself during this process
interrupts this workflow and prevents it from returning results to the master.
Therefore, the state in this SLS file uses `salt-call` (which spawns a new
process on the minion, separate from the `salt-minion` daemon) to handle the
service restart in the background. This, combined with a short sleep, allows
the results to be returned before the service is restarted.

Other techniques for having Salt restart itself can be found in the Salt
[FAQ](https://docs.saltstack.com/en/latest/faq.html#what-is-the-best-way-to-restart-a-salt-minion-daemon-using-salt-after-upgrade).
