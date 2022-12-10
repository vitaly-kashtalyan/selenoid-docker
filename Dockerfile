FROM aerokube/selenoid:1.10.9

COPY ./browsers.json /etc/selenoid/browsers.json

ENTRYPOINT ["/usr/bin/selenoid", "-listen", ":4444", "-conf", "/etc/selenoid/browsers.json", "-video-output-dir", "/opt/selenoid/video", "-log-output-dir", "/opt/selenoid/logs", "-limit", "4"]