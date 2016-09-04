sed -i 's/${yarn.resourcemanager.hostname}/'"$YARN_RESOURCEMANAGER_HOSTNAME"'/g' /etc/hadoop/conf/yarn-site.xml

/etc/init.d/hadoop-yarn-nodemanager start; tail -F /var/log/hadoop-yarn/yarn-yarn-nodemanager-*.log
