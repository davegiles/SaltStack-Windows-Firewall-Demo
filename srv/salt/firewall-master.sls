"Firewall Down Prompt":
  salt.state:
    - tgt: 'win*'
    - sls: windows.firewall-prompt

"Start Windows Firewall":
  salt.state:
    - tgt: 'win*'
    - sls: windows.firewall-start
    - require:
      - salt: "Firewall Down Prompt"

"Slack Message on Successfull Firewall Startup":
  salt.state:
    - tgt: 'win*'
    - sls: slack.firewall_slack
    - require:
      - salt: "Start Windows Firewall"
