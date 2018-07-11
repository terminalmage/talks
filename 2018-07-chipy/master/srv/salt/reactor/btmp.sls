report-btmp:
  runner.salt.cmd:
    - args:
      - fun: slack.post_message
      - channel: setec-astronomy
      - from_name: cosmo
      - message: "Failed login from `{{ data.get('user', '') or 'unknown user' }}` on `{{ data['id'] }}`"
