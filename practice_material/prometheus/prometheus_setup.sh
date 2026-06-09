cd ~
mkdir prometheus_folder
cd prometheus_folder
wget https://github.com/prometheus/node_exporter/releases/download/v1.11.1/node_exporter-1.11.1.linux-amd64.tar.gz
tar -xvzf node_exporter-1.11.1.linux-amd64.tar.gz
cd node_exporter-1.11.1.linux-amd64
ls
./node_exporter
