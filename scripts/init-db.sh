#!/bin/bash

# Script is to be used to initialize database from the dump file

# Flush existing tables
psql -U postgres -d postgres -c "DROP SCHEMA public CASCADE; CREATE SCHEMA public; GRANT ALL ON SCHEMA public TO postgres; GRANT ALL ON SCHEMA public TO public;"
# Load from dumpfile
psql -U postgres -d postgres -f /opt/bitnami/projects/db/db.sql
# Restart Apache
sudo /opt/bitnami/ctlscript.sh restart apache
