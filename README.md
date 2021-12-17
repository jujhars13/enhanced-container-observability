# Enhanced Container Observability

![logo](web/logo.png)

An experiment with [Cadvisor](https://github.com/google/cadvisor), Prometheus, Grafana to give us enhanced and repeatable observability of running containers

- Cadvisor is used to scrape system and docker metrics, it will surface a REST API, prometheus metrics endpoint and it's own rudimentary dashboard
- Prometheus scrapes and stores the data from `cadvisor/metrics`
- Grafana will read data from prometheus and can be used to create dashboards
- We have a bunch of nginx containers as our sample apps and use [vegeta]() load testing tool to put continuous random dummy load onto them so we get nice looking graphs
- Will will also explore custom hand-cranked HTML+JS dashboards that read data from `cadvisor/api`

## To start

```bash
docker-compose up
```

Then visit Grafana on http://localhost:3000 (usr/pwd: `admin`/`admin`)

You can also see cadvisor on http://localhost:8081 and prometheus on https://localhost:9090

## TODO

- [x] setup basic docker-compose setup
- [x] wire up Prometheus to cadvisor
- [x] wire up grafana to prometheus
- [x] create some dummy containers to simulate load
- [x] IAC grafana dashboards
- [ ] create nginx proxy to wrap cadvisor + webpage to prevent CORS issues
- [ ] create a quick and dirty custom visualisation dashboard
- [ ] create a proper custom dashboard
- [ ] add IAC grafana alerting
- [ ] document memory usage of the stack
- [ ] Add some sample cadvisor container data [metadata "hints"](https://github.com/google/cadvisor/blob/master/container/common/container_hints.go)

## Licence

[MIT](LICENCE)
