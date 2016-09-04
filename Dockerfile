FROM isthari/cdh5-base

RUN apt-get update
RUN apt-get install -y -t jessie-cdh5 hadoop-yarn-nodemanager hadoop-mapreduce

ADD core-site.xml /etc/hadoop/conf/core-site.xml
ADD yarn-site.xml /etc/hadoop/conf/yarn-site.xml

EXPOSE 50562 8042

CMD /etc/init.d/hadoop-yarn-nodemanager start; tail -F /var/log/hadoop-yarn/yarn-yarn-nodemanager-*.log
