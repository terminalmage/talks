# Pillar Configuration

This contains the [pillar
data](https://docs.saltstack.com/en/latest/topics/tutorials/pillar.html) used
in the
[users.jinja](https://github.com/terminalmage/talks/blob/master/2018-07-chipy/master/srv/salt/users/jinja.sls)
SLS file.

This must be paired with a
[pillar_roots](https://github.com/terminalmage/talks/blob/master/2018-07-chipy/master/etc/salt/master.d/pillar.conf)
configuration to tell Salt where to look for these pillar SLS files.
