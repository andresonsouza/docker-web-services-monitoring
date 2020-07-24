SECRETS := $(shell readlink -f ./.env)

all: prometheus/prometheus.yml
	docker-compose up

# alertmanager.yml: alertmanager.yml.in $(SECRETS)
# 	@test -f $(SECRETS) ; set -a ; source $(SECRETS) ; envsubst < $< > $@

prometheus/prometheus.yml: prometheus/prometheus.yml
	@test -f $(SECRETS) ; set -a ; source $(SECRETS) ; envsubst < $< > $@
	docker run -v $(shell pwd)/prometheus:/prometheus:rw -it --entrypoint=promtool prom/prometheus check config /app-grafana/prometheus.yml

clean:
	rm -rf alertmanager.yml prometheus/prometheus.yml

reallyclean: clean
	docker-compose down -v
