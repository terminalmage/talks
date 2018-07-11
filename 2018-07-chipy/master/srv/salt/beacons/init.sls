include:
  - common.restart-minion

/etc/salt/minion.d/beacons.conf:
  file.managed:
    - source: salt://beacons/files/beacons.conf
    - makedirs: True
    - order: last
    - onchanges_in:
      - cmd: restart-minion
