"Firewall Down Prompt":
  salt.state:
    - tgt: 'win*'
    - sls: firewall-prompt

"Start Windows Firewall":
  salt.state:
    - tgt: 'win*'
    - sls: firewall-start
    - require:
      - salt: "Firewall Down Prompt"

"Slack Message on Successfull Firewall Startup":
  salt.state:
    - tgt: 'win*'
    - sls: firewall-slack
    - require:
      - salt: "Start Windows Firewall"
