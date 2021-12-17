#!/bin/bash
# generate semi-random load on destination web servers using vegeta

# sleep for a bit before kicking off, give us a chance to open up dashboards and stuff
sleep 10s

echo "Generating load against ${URL}"

while true; do
    random=$(( ( RANDOM % 40 ) + 1 ))
    echo "Sleeping for ${random}s"
    sleep "${random}s"
    echo "GET http://${URL}" | \
        vegeta attack -rate=4 -duration="${random}s" | \
        tee results.bin | \
        vegeta report
done
