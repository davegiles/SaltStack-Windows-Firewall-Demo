slack-message:
  slack.post_message:
    - channel: 'general'
    - from_name: 'Your Friendly Neighborhood SALT Master'
    - message: 'The Windows Firewall was restarted on node `{{ grains['fqdn'] }}` successfully.'
    - api_key: ******************
