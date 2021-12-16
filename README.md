# Enhanced Container Observability

![logo](web/logo.png)

An experiment with [Cadvisor](https://github.com/google/cadvisor), Prometheus, Grafana to give us enhanced and repeatable observability of running containers

## TODO

- [x] setup basic docker-compose setup
- [x] wire up Prometheus to cadvisor
- [ ] clickops together a test grafana dashboard
- [ ] document memory usage of the stack
- [ ] create some dummy containers to simulate load
- [ ] IAC grafana dashboards
- [ ] create nginx proxy to wrap cadvisor + webpage to prevent CORS issues
- [ ] create a quick and dirty visualisation dashboard
- [ ] create a proper dashboard
- [ ] add alerting
- [ ] IAC some sample alerts
- [ ] Add some sample cadvisor container data [metadata "hints"](https://github.com/google/cadvisor/blob/master/container/common/container_hints.go)

## Licence

[MIT](LICENCE)