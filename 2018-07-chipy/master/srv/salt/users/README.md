# Managing Users

The two SLS files here have identical outcomes, but one uses
[Jinja](https://docs.saltstack.com/en/latest/topics/jinja/index.html)
templating.

Note that these SLS files do not set passwords for the users. The `password`
argument can be used to set a password hash for a user. More information on
this and other options can be found in the [user.present
documentation](https://docs.saltstack.com/en/latest/ref/states/all/salt.states.user.html#salt.states.user.present).
