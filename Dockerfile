FROM elasticsearch:2

MAINTAINER Francois Raubenheimer <cois.io>

RUN /usr/share/elasticsearch/bin/plugin install --batch analysis-phonetic

RUN /usr/share/elasticsearch/bin/plugin install --batch analysis-icu

RUN echo -e "script.inline: on\nscript.indexed: on" >> /etc/elasticsearch/elasticsearch.yml

