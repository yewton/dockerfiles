Insecure WebDAV container
=========================

## Usage ##

``` Shell
docker create -v /var/webdav --name webdavdata yewton/webdav-insecure /bin/true
docker run -d -p 8888:80 --name webdav --volumes-from webdavdata yewton/webdav-insecure
```
