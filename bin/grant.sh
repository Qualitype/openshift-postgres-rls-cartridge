#!/bin/bash

SQL_FILE=/tmp/grant.sql

echo "alter role " \"$USER\" " with replication" > /tmp/grant.sql
psql -U $USER $OPENSHIFT_APP_NAME < $SQL_FILE

