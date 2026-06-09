# Prometheus Notes

#### Convert the Node Exporter from CLI based running application to a Unix Service

1. You'll need a User & Group so that you can start the Node Exporter as a Service for that particular User. <br>
Add the following package for including groupadd & useradd commands to the alpine linux 
<br>
``` 
apk add shadow
apk add openrc        ### for rc-service manager utility

groupadd --system prometheus
useradd -s /sbin/nologin --system -g prometheus prometheus 

mv node_exporter /var/lib/node/

Add the service file to the following location to make it as a service under the system folder
<!-- nano /etc/systemd/system/node.service -->
<!-- nano /etc/init.d/system/node.service -->

nano /etc/init.d/prometheus_node_exporter
mkdir -p /run/openrc
touch /run/openrc/softlevel
rc-update add prometheus_node_exporter default
rc-service prometheus_node_exporter start
```
<br>
[Node Exporter as Service File](./convert_node_exporter_to_service.service)
