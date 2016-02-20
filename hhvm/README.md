# HHVM #

3.12.0

## Usage ##

Example:

```
docker run -d --name hhvm -v $PWD/wordpress:/srv/wordpress -p 8080:8080 yewton/hhvm hhvm -m server -p 8080 -d hhvm.server.source_root=/srv/wordpress
```
