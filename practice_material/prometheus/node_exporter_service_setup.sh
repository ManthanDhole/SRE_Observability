apk add shadow
apk add openrc

groupadd --system prometheus
useradd -s /sbin/nologin --system -g prometheus prometheus 

mv node_exporter /var/lib/node/

nano /etc/init.d/prometheus_node_exporter

mkdir -p /run/openrc
touch /run/openrc/softlevel
rc-update add prometheus_node_exporter default
rc-service prometheus_node_exporter start