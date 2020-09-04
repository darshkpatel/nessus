FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget
RUN wget -O nessus-installer.deb --user-agent='Mozillqa/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/49.0' --header='Upgrade-Insecure-Requests: 1' 'https://www.tenable.com/downloads/api/v1/public/pages/nessus/downloads/11435/download?i_agree_to_tenable_license_agreement=true'
RUN dpkg -i nessus-installer.deb && rm nessus-installer.deb

EXPOSE 8834

ENTRYPOINT ["/opt/nessus/sbin/nessusd"]

VOLUME ["/opt/nessus/etc/nessus/"]
