swagger2html
==============

Generate HTML document from swagger spec using [Swagger2Markup](https://github.com/Swagger2Markup/swagger2markup) and [Asciidoctor](http://asciidoctor.org/).

Example
-------

https://www.yewton.net/dockerfiles/swagger2html/swagger.html

Usage
------

Put `swagger.yaml` to current directory and run following commands:

```
docker pull yewton/swagger2html
docker run --rm -v $(pwd):/in -v $(pwd)/api-doc:/out yewton/swagger2html
```
