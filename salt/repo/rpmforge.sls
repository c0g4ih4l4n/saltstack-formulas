{% from 'repo.map.jinja' import app with context %}

{% if grains['os'] == 'Centos' %}
install rpmforge repo:
  pkg:
    {% if pillar['rpmforge:rpmforge_name'] in salt['pkg.list_pkgs']().keys() %}
    - installed
    - sources:
      - {{ pillar['rpmforge:rpmforge_name'] }}: {{ pillar['rpmforge:rpmforge_src'] }}
    {% else %}
    - name: {{ pillar['rpmforge:rpmforge_name'] }}
    - latest
    {% endif %}

  file:
    - managed
    - name: /etc/yum.repos.d/rpmforge.repo
    - source: salt://repo/etc/rpmforge.repo
    
{% endif %}
