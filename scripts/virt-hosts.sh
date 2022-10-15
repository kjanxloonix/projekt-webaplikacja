#!/bin/bash

# This script assumes that you have already implemented changes to django application.
# It copies configuration files from ./templates folder to /opt/bitnami/apache2/conf/vhosts
# Reference: https://docs.bitnami.com/virtual-machine/infrastructure/django/get-started/deploy-django-project/

# Building static files (just in case)
python /opt/bitnami/projects/website/manage.py collectstatic --noinput

# Copying templates to Apache config folder
cp /opt/bitnami/projects/scripts/templates/virtual-hosts/* /opt/bitnami/apache2/conf/vhosts/

# Restarting Apache service
sudo /opt/bitnami/ctlscript.sh restart apache
