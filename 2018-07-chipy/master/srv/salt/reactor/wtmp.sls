report-wtmp:
  runner.salt.cmd:
    - args:
      - fun: slack.post_message
      - channel: setec-astronomy
      - from_name: cosmo
      - message: "{{ data.get('action', 'Unknown event') | capitalize }} from `{{ data.get('user', '') or 'unknown user' }}` on `{{ data['id'] }}`"
