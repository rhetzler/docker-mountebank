# Mountebank Docker Image

Provides [mountebank](http://www.mbtest.org/).

## Supported tags and respective `Dockerfile` links
 * [`latest` (Dockerfile)](https://github.com/expert360/docker-mountebank/blob/master/Dockerfile)

## expert360/mountebank:latest

Installs the latest version of mountebank and exposes port 2525 ready for configuration and testing.

Running should be as simple as:

    docker run -p 2525:2525 -d expert360/mountebank

and then visiting [localhost:2525](http://localhost:2525).

If you wish to load your imposters automatically, mount your imposters as a volume and bind the necessary ports:

    docker run -v ./imposters:/imposters [-p IMPOSTER_1_PORT:IMPOSTER_1_PORT ...] -p 2525:2525 -d docker.expert360.com/expert360/mountebank --configfile /imposters/imposters.ejs --allowInjection
