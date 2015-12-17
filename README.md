```Quick demo showing: a) a minion pillar with beacon configuration for Windows Firewall Service, b) a reactor watching for beacon service events that c) kicks off an orchestration file consisting of 3 states (send notification to all logged on users that Windows Firewall is down and will restart, start Windows Firewall service, and send a slack notification that the service was restarted).```

```States target win* glob for name of windows server, and a slack api_key is required for this to work.  Designed for a single salt master with a single windows machine as a minion.``` 
