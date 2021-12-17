# Enhanced Container Observability

![logo](web/logo.png)

An experiment with [Cadvisor](https://github.com/google/cadvisor), Prometheus, Grafana to give us enhanced and repeatable observability of running containers

## TODO

- [x] setup basic docker-compose setup
- [x] wire up Prometheus to cadvisor
- [x] wire up grafana to prometheus
- [ ] clickops together a test grafana dashboard
- [x] create some dummy containers to simulate load
- [ ] IAC grafana dashboards
- [ ] create nginx proxy to wrap cadvisor + webpage to prevent CORS issues
- [ ] create a quick and dirty visualisation dashboard
- [ ] create a proper dashboard
- [ ] add alerting
- [ ] IAC some sample alerts
- [ ] document memory usage of the stack
- [ ] Add some sample cadvisor container data [metadata "hints"](https://github.com/google/cadvisor/blob/master/container/common/container_hints.go)

## Licence

[MIT](LICENCE)
