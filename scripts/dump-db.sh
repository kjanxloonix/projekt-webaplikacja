#!/bin/bash

# Script is to be used to create database dumpfile

# Dump file
sudo -u postgres pg_dump postgres > /opt/bitnami/projects/db/db.sql
# Restart Apache
sudo /opt/bitnami/ctlscript.sh restart apache
