# Docker-Compose Deployment of Archiver Appliance with Example IOC

This respository in an example deployment of
a [Docker image of the EPICS Archiver Appliance][]
(with [this Dockerfile][Dockerfile]),
an EPICS example softIoc and a Redis database.

Redis is used for the persistance of the appliance configuration,
see the [RedisPersistence class][].

Data is stored in ./storage/{sts,mts,lts} mounted from the host.

### Usage

Run:

```
docker-compose up
```

In a browser, open <http://localhost:17665/mgmt/ui/index.html>.
It might take ~20-30 seconds until the tomcat server is
fully up and running, so if you get the following error,
just refresh the page after a couple of seconds:

> HTTP Status 503 – Service Unavailable  
> This appliance is still starting up

On this home page of the archiver appliance, you can add the PVs
served by the example IOC by entering the following lines
in the input field and then clicking the `[Archive]` button:

```
root:subExample
root:xxxExample
root:aSubExample
root:circle:tick
root:circle:step
root:circle:period
root:line:b
root:aiExample
root:aiExample1
root:ai1
root:aiExample2
root:ai2
root:aiExample3
root:ai3
root:EXAMPLE:version
root:compressExample
root:circle:angle
root:line:a
root:circle:x
root:circle:y
root:calcExample
root:calcExample1
root:calc1
root:calcExample2
root:calc2
root:calcExample3
root:calc3
```

[RedisPersistence class]: https://slacmshankar.github.io/epicsarchiver_docs/api/org/epics/archiverappliance/config/persistence/RedisPersistence.html
[Docker image of the EPICS Archiver Appliance]: https://hub.docker.com/r/pklaus/archiver-appliance
[Dockerfile]: https://github.com/pklaus/docker-archiver-appliance
