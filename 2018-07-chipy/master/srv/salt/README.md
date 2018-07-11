# /srv/salt

This is the default path to the `base` fileserver environment in Salt. Files
served from here will have a `salt://` URL relative to this path. The
[file_roots](https://docs.saltstack.com/en/latest/ref/configuration/master.html#std:conf_master-file_roots)
config option is used to configure the directory paths and environments, should
your use case call for a different configuration.

## SLS File Namespace

When applying individual SLS files using
[state.apply](https://docs.saltstack.com/en/latest/ref/modules/all/salt.modules.state.html#salt.modules.state.apply),
SLS files are referred to without the `.sls` extension, and with the slashes
replaced by dots. So, `/srv/salt/foo.sls` (i.e. `salt://foo.sls`) would be
applied using `state.apply foo`, and `/srv/salt/foo/bar.sls` would be applied
using `state.apply foo.bar`.

```
# Apply salt://foo.sls
salt '*' state.apply foo
# Apply salt://foo/bar.sls to Ubuntu hosts only
salt -G 'os:Ubuntu' state.apply foo.bar
```

If a directory contains an `init.sls`, then it would be referred to by the
parent directory's path. For example, `salt://foo/bar.sls` and
`salt://foo/bar/init.sls` would both have an SLS name of `foo.bar`. If both of
these existed, then `salt://foo/bar.sls` would take precedence. It is generally
not a good idea to keep files and directories which would both have the same
SLS name, to reduce confusion.

## top.sls

This file is used to target Minions and apply one or more SLS files to them.
See the below links for more information:
- [The Top File](https://docs.saltstack.com/en/latest/ref/states/top.html)
- [States Tutorial, Part 1](https://docs.saltstack.com/en/latest/topics/tutorials/states_pt1.html)
