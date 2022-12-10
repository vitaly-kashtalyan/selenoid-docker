# selenoid-docker

## Quick Start Guide

### Start [Selenoid](https://github.com/aerokube/selenoid) using [docker-compose](https://docs.docker.com/compose/)

```docker
docker-compose up --build -d
```

### Run Your Tests

```java

ChromeOptions options=new ChromeOptions();
    options.setCapability("browserVersion","108.0");
    options.setCapability("selenoid:options",new HashMap<String, Object>(){{
    /* How to set session timeout */
    put("sessionTimeout","5m");

    /* How to set timezone */
    put("env",new ArrayList<String>(){{
    add("TZ=UTC");
    }});

    /* How to enable video VNC */
    put("enableVNC",true);

    /* How to enable video recording */
    put("enableVideo",false);
    }});
    RemoteWebDriver driver=new RemoteWebDriver(new URL("http://127.0.0.1:4444/wd/hub"),options);
```

### To open Selenoid UI navigate to the following page in your browser:

```
http://localhost:8080/
```
