```Quick demo showing a minion pillar with beacon configuration for Windows Firewall Service, a reactor watching for beacon service events that kicks off an orchestration file consisting of 3 states: 1) send notification to all logged on users that Windows Firewall is down and will restart, 2) start Windows Firewall service, and 3) send a slack notification that the service was restarted.```

```States target win* glob for names of windows servers``` 
