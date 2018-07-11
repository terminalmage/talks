restart-minion:
  cmd.run:
    - name: 'sleep 3 && salt-call service.restart salt-minion'
