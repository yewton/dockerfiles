# i-hate-diskfull #

Delete old files when the capacity is under threshold.

## Usage ##

``` Shell
docker run -e "MOUNTPOINT=/var/mofu" -e "CAPACITY=90" -e "TARGETDIR=/var/mofu/cache" -e "DAYS=7" -d --rm yewton/i-hate-diskfull
```
