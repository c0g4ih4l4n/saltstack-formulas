rpmforge:
  rpmforge_name: rpmforge-release

  # centos 7
{% if grains['osrelease'] == 7 %}

  # 64-bit os
  {% if grains['osarch'] == 'amd64' %}
  rpmforge_src: salt://repo/source/rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm 
  {% else %} # 32-bit os
  rpmforge_src: salt://repo/source/rpmforge-release-0.5.3-1.el7.rf.i386.rpm
  {% endif %}

  # centos 6
{% elif grains['osrelease'] == 6 %}

  {% if grains['osarch'] == 'i386' %}
  rpmforge_src: salt://repo/source/rpmforge-release-0.5.2-2.el6.rf.i686.rpm
  {% else %}
  rpmforge_src: salt://repo/source/rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm
  {% endif %}

  # centos 5
{% elif grains['osrelease'] == 5 %}
  {% if grains['osarch'] == 'i386' %}
  rpmforge_src: salt://repo/source/rpmforge-release-0.5.2-2.el5.rf.i386.rpm
  {% else %}
  rpmforge_src: salt://repo/source/rpmforge-release-0.5.2-2.el5.rf.x86_64.rpm
  {% endif %}

  # centos 4
{% elif grains['osrelease'] == 4 %}
  {% if grains['osarch'] == 'i386' %}
  rpmforge_src: salt://repo/source/rpmforge-release-0.5.2-2.el4.rf.i386.rpm
  {% else %}
  rpmforge_src: salt://repo/source/rpmforge-release-0.5.2-2.el4.rf.x86_64.rpm
  {% endif %}

{% endif %}



