zsh:
  pkg.installed

{% for username, user_info in pillar['users'].items() %}
{{ username }}:
  user:
    - present
  {% for key, value in user_info.items() %}
    - {{ key }}: {{ value }}
  {% endfor %}
{% endfor %}
