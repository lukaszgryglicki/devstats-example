#!/bin/bash
if [ -z "$ONLY" ]
then
  all="homebrew"
else
  all=$ONLY
fi
mkdir sqlite 1>/dev/null 2>/dev/null
touch sqlite/touch
for proj in $all
do
    db=$proj
    rm -f sqlite/* 2>/dev/null
    touch sqlite/touch
    sqlitedb /var/lib/grafana.$db/grafana.db || exit 1
    rm -f grafana/dashboards/$proj/*.json || exit 2
    mv sqlite/*.json grafana/dashboards/$proj/ || exit 3
done
echo 'OK'
