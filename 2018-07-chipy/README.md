# Intro to SaltStack - Chicago Python, 12 July 2018

Hi! I hope I got a chance to meet you at Chicago Python. Here are the notes
from my demo and presentation.

The demo used Docker images for the master and minions. It also used Salt on
the Docker host machine to spawn all of the containers. The SLS file used to
spawn the containers can be found
[here](https://github.com/terminalmage/talks/tree/master/2018-07-chipy/chipy.sls)
if you are interested, but I haven't published the containers, mostly because
they contain Slack API keys but also because the containers are specially
configured to run Salt from a mounted git checkout. So, for those who would
like to test out the functionality I included in my demo, I've included copies
of all the config files used in the master and minions (the minions all use the
same exact minion config file). These are organized in the
[master](https://github.com/terminalmage/talks/tree/master/2018-07-chipy/master)
and
[minion](https://github.com/terminalmage/talks/tree/master/2018-07-chipy/minion/etc/salt)
subdirectories. As you browse them, you will notice additional README files
which will help to give further context.

Also, note that some of the functionality in the wtmp reactor SLS file uses new
code, still pending merge into Salt's `develop` branch, specifically the
[`action` key in the event
data](https://github.com/terminalmage/talks/blob/master/2018-07-chipy/master/srv/salt/reactor/wtmp.sls#L7).
Instead of using that key, you can determine that the event is for a login if
`data['type'] == 7`, and, a logout if `data['type'] == 8`.

The slides from my talk are in OpenDocument Format, and can be opened both in
[LibreOffice](https://www.libreoffice.org/) and [Apache
OpenOffice](https://www.openoffice.org/). Download them
[here](https://github.com/terminalmage/talks/tree/master/2018-07-chipy/ChiPy.odp).
The social media icons in the slides are courtesy of
[Flaticon](https://www.flaticon.com/).

# Getting Help

- [SaltStack Community Slack](https://saltstackcommunity.slack.com/messages) (click [here](http://saltstackcommunity.herokuapp.com/) to join)
- `#salt` on `irc.freenode.net`
- [SaltStack Issue Tracker](https://github.com/saltstack/salt/issues)

# Further Reading

- [Salt Walkthrough](https://docs.saltstack.com/en/latest/topics/tutorials/walkthrough.html#tutorial-salt-walk-through)
- [States Tutorial](https://docs.saltstack.com/en/latest/topics/tutorials/states_pt1.html) - A multi-part tutorial on how to run states
- [Grains](https://docs.saltstack.com/en/latest/topics/grains/) - Static information about Minions
- [Pillar](https://docs.saltstack.com/en/latest/topics/tutorials/pillar.html) - User-defined, environment-aware variables
- [Runners](https://docs.saltstack.com/en/latest/ref/runners/)
- [Orchestration](https://docs.saltstack.com/en/latest/topics/orchestrate/orchestrate_runner.html)
- [Salt Cloud](https://docs.saltstack.com/en/latest/topics/cloud/)
- [Beacons](https://docs.saltstack.com/en/latest/topics/beacons/)
- [Engines](https://docs.saltstack.com/en/latest/topics/engines/index.html)
- [Returners](https://docs.saltstack.com/en/latest/ref/returners/)
- [Git Fileserver Backend](https://docs.saltstack.com/en/latest/topics/tutorials/gitfs.html)
- [Contributing to Salt](https://docs.saltstack.com/en/latest/topics/development/contributing.html)
- [Developer's Reference](https://docs.saltstack.com/en/latest/topics/development/)
