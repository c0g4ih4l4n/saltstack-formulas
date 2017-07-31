{% from 'repo/map.jinja' import app with context %}

{% if grains['os_family'] == 'RedHat' %}
install_epel_repository:
  pkg.installed:
    - name: {{ pillar['epel:epel_name'] }} 
 
  pkg.latest:
    - name: {{ salt['pillar.get']('epel:epel_name') }}
{% endif %}
