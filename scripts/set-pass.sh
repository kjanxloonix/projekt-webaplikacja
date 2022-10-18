#!/bin/bash
# Script replaces current db password with a default one in settings.py

sed -i "s/'PASSWORD':.*/'PASSWORD': '$(grep -oP "(?<=').*?(?=')" /home/bitnami/bitnami_credentials)'/g" /opt/bitnami/projects/website/website/settings.py
