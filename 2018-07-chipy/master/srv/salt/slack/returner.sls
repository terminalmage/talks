include:
  - common.restart-minion

/etc/salt/minion.d/slack_returner.conf:
  file.managed:
    - source: salt://slack/files/slack_returner.conf
    - makedirs: True
    - order: last
    - onchanges_in:
      - cmd: restart-minion
