#!/bin/bash
echo "Checking node availability..."
ping -c 2 localhost

echo "Checking Prometheus..."
curl -s -o /dev/null -w "%{http_code}\n" http://localhost:9090

echo "Checking Grafana..."
curl -s -o /dev/null -w "%{http_code}\n" http://localhost:3000
