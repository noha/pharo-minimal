remotePharo := TlpRemoteIDE connectTo: (TCPAddress ip: #[127 0 0 1] port: 40423).

remotePharo openPlayground.
remotePharo openBrowser.
remotePharo openProcessBrowser.

remotePharo evaluateAsync: [ [1/0] fork ].
remotePharo evaluate: [ 1 + 2 ] "==> 3".
remotePharo evaluate: [ 0@0 corner: 2@3 ] "==> aSeamlessProxy on remote rectangle".
