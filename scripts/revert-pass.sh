#!/bin/bash
# Script replaces current db password with an empty field in settings.py

sed -i "s/'PASSWORD':.*/'PASSWORD': ''/g" /opt/bitnami/projects/website/website/settings.py
