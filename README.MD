# Prometheus, Blackbox, Grafana e Docker

Suba um ambiente de monitoramento com apenas dois comandos.

### Adicione a resolução de nomes ao arquivo /etc/hosts
```bash
cd scripts
sudo ./script-hosts.sh
```

### Faça o build e suba as aplicações
```bash
docker-compose up --build
```

### Defina quais endpoints serão monitorados
Para definir os endpoints é só adionar os mesmos no arquivo [targets](https://github.com/andresonsouza/docker-web-services-monitoring/blob/master/prometheus-data/targets.yml) localizado no diretório prometheus-data.

### Endereço das aplicações
Após subir os serviços com o docker-compose usar os seguintes endereços acessar para os serviços:

[app.example.com](http://app.example.com)<br />
[grafana.example.com](http://grafana.example.com)<br />
[prometheus.example.com](http://prometheus.example.com)<br />
[blackbox.example.com](http://blackbox.example.com)

### Referências
[https://github.com/kaihendry/pingprom](https://github.com/kaihendry/pingprom)<br />

[https://prometheus.io/docs/guides/multi-target-exporter/](https://prometheus.io/docs/guides/multi-target-exporter/)<br />

[Monitoramento de aplicações com Prometheus e Grafana](https://www.udemy.com/share/101IwkAkMec1pXQ3o=/)

[https://medium.com/the-telegraph-engineering/how-prometheus-and-the-blackbox-exporter-makes-monitoring-microservice-endpoints-easy-and-free-of-a986078912ee](https://medium.com/the-telegraph-engineering/how-prometheus-and-the-blackbox-exporter-makes-monitoring-microservice-endpoints-easy-and-free-of-a986078912ee)