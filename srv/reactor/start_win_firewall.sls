{% if data.data.MpsSvc.running == false %}
"Windows Firewall Startup":
  runner.state.orchestrate:
    - mods: firewall-master
{% endif %}
