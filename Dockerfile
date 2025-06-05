FROM ubuntu:25.10
RUN userdel -r ubuntu && useradd -m -u 15295 runner
COPY container/. .
RUN apt-get update && apt-get install -y locales python3 curl libicu-dev && rm -rf /var/lib/apt/lists/* \
	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 && chown -R runner:runner /home/runner
ENV LANG en_US.utf8
USER runner
ENTRYPOINT /home/runner/bin/entrypoint.sh