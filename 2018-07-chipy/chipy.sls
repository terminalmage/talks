# This SLS file is here more to satisfy curiosity than anything else, it is the
# SLS file I used to deploy the Docker containers for the demo.

{% macro docker_with_systemd(hostname, image, network='chipy') -%}
{{ hostname }}:
  docker_container.running:
    - image: {{ image }}
    - hostname: {{ hostname }}
    - networks:
    {%- if kwargs %}
      - {{ network }}:
        {%- for key, value in kwargs.items() %}
        - {{ key }}: {{ value }}
        {%- endfor %}
    {%- else %}
      - {{ network }}
    {%- endif %}
    - force: True
    - command: /usr/lib/systemd/systemd
    - cap_add: SYS_ADMIN
    - binds:
      - /sys/fs/cgroup:/sys/fs/cgroup:ro
      - /home/erik/git/salt/chipy:/testing
    - stop_timeout: 1
{%- endmacro %}

chipy:
  docker_network.present:
    - subnet: 10.0.13.0/24
    - gateway: 10.0.13.254
    - iprange: 10.0.13.128/25

{{ docker_with_systemd('chipy-master', 'terminalmage/chipy:master', ipv4_address='10.0.13.37') }}

{{ docker_with_systemd('chipy-cent7', 'terminalmage/chipy:cent7') }}

{{ docker_with_systemd('chipy-ubuntu18', 'terminalmage/chipy:ubuntu18') }}

{{ docker_with_systemd('chipy-arch', 'terminalmage/chipy:arch') }}
