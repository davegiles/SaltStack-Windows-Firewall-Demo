Quick demo showing: a) a minion pillar with beacon configuration for Windows Firewall Service, b) a reactor watching for beacon service events that c) kicks off an orchestration file consisting of 3 states (1- send notification popup to all logged on users that Windows Firewall is down and will restart after a 15 second delay, 2- start Windows Firewall service, and 3- send a slack notification that the service was restarted).

States target ```win*``` glob for name of windows server, and a slack api_key is required for this to fully work.  Designed for a single salt master with a single windows machine as a minion.

Either issue a ```salt 'win*' service.stop MpsSvc``` command from the master to kickoff the demo or stop the Windows Firewall service on the Windows machine manually.  Use a ```salt 'win*' service.status MpsSvc``` to show service state.
