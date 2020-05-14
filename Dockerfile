FROM pandoc/latex



#    apk add py-pip && \
#	pip install plantuml && \
#	pip install pandoc-plantuml-filter

RUN apk update && \
    apk add curl graphviz npm openjdk11-jre-headless && \
	npm install -g pandoc-plantuml

COPY plantuml /usr/local/bin/plantuml
RUN curl -sSL http://sourceforge.net/projects/plantuml/files/plantuml.1.2020.9.jar/download > /usr/local/bin/plantuml.jar && chmod +x /usr/local/bin/plantuml

