# docker-racktables
racktables dc asset mgm
# Abstract
This is a docker container for RackTables that includes the requisite dependencies. No support for SNMP-based functionality of RackTables is included.

RackTables is a Datacenter Infrastrucutre Managemnt (DCIM) solution written in PHP.

# Running
A database is required to be set up first on an external MySQL server. This container wraps only the web application. A secret.php file should also be provided containing the configuration.

# The container can then be launched:
```bash
docker run --name=racktables -d --restart=unless-stopped \
    -v /etc/racktables/secret.php:/var/www/html/inc/secret.php \
    prabhakaran2304/racktables
```    
The nginx-proxy container can be used as a front-end by adding the -e VIRTUAL_HOST="fqdn.domain.tld" parameter at launch and running both containers on the same host. Automated SSL functionality can be introduced by adding letsencrypt-nginx-proxy-companion into the mix.
