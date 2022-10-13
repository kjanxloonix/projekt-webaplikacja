# Dokumentacja
1. Przygotowanie środowiska:
```
sudo mkdir -p /opt/bitnami/projects && \
sudo chown -R $USER /opt/bitnami/projects && \
git clone git@github.com:kjanxloonix/projekt-webaplikacja.git /opt/bitnami/projects
```
2. Uruchamianie serwera domyślnie:

`python /opt/bitnami/projects/website/manage.py runserver`

Projekt jest importowany do ścieżki `/opt/bitnami/projects`.

## TODO
- Wystawianie serwera "na zewnątrz" - w dokumentacji bitnami
- Implementacja template z [linka](https://djangocentral.com/building-a-blog-application-with-django/)
- **Skrypt bash do zmian w systemie?**
