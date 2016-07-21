FROM java:8
MAINTAINER yewton <yewton@gmail.com>

RUN apt-get update && apt-get install -y wget ruby && apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
RUN gem install --no-doc asciidoctor
RUN wget -O swagger2markup-cli-1.0.0.jar 'https://bintray.com/swagger2markup/Maven/download_file?file_path=io%2Fgithub%2Fswagger2markup%2Fswagger2markup-cli%2F1.0.0%2Fswagger2markup-cli-1.0.0.jar'

COPY config.properties /

CMD java -jar swagger2markup-cli-1.0.0.jar convert \
                --swaggerInput /in/swagger.yaml \
                --config config.properties \
                --outputFile /out/swagger && \
       asciidoctor /out/swagger.adoc \
                   --backend html5 \
                   --doctype book \
                   -a toc=left \
                   -a toclevels=3 \
                   -a numbered= \
                   -a sectlinks= \
                   -a sectanchors= \
                   -a hardbreaks=
