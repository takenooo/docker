FROM takenooo/ruby:1.8.7

RUN set -ex \
	&& apt-get update \
	&& apt-get install -y --no-install-recommends \
		libsqlite3-0 \
	&& apt-get install -y --no-install-recommends \
		gcc \
		libsqlite3-dev \
		make \
		wget \
	&& gem install sqlite3 -v 1.3.13 \
	&& gem install net-ssh -v 2.9.4 \
	&& gem install net-sftp -v 2.1.2 \
	&& wget -O - https://raw.githubusercontent.com/sibprogrammer/owp/master/installer/ai.sh | sh \
	&& /opt/ovz-web-panel/script/owp stop \
	&& apt-get purge -y --auto-remove \
		gcc \
		libsqlite3-dev \
		make \
		wget \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 3000/tcp
CMD ["bash", "-c", "/opt/ovz-web-panel/script/owp start && while true; do sleep 1; done"]
