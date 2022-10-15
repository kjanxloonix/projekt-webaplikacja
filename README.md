# Dokumentacja

To repozytorium zawiera stronę projektową prostej platformy blogowej. Stos oprogramowania wykorzystanego w projekcie to:
- Stos [Bitnami Django (3.2.16)](https://bitnami.com/stack/django)
- Oracle VirtualBox (6.1.38)

Wstępna konfiguracja jest kluczowa w celu zapewnienia poprawnego działania stosu oprogramowania. Domyślnie obraz VM Bitnami wystawia strony domyślne na portach TCP 80, 443. Naszym celem jest implementacja blogu Django na tych portów, poprzez implementację Apache Virtual Hosts, zgodnie z zaleceniami [dokumentacji Bitnami](https://docs.bitnami.com/virtual-machine/infrastructure/django/get-started/deploy-django-project/).

---
### TODO
- [X] ~~Wystawianie serwera "na zewnątrz" - w dokumentacji bitnami~~
- [ ] Implementacja template z [linka](https://djangocentral.com/building-a-blog-application-with-django/)
- [ ] **Skrypt bash do zmian w systemie?**
- --


## Przygotowanie środowiska

1. Przygotowanie środowiska:
```
sudo mkdir -p /opt/bitnami/projects && \
sudo chown -R $USER /opt/bitnami/projects && \
git clone git@github.com:kjanxloonix/projekt-webaplikacja.git /opt/bitnami/projects
```
2. Uruchamianie serwera domyślnie (testowo):
```
python /opt/bitnami/projects/website/manage.py runserver
```

Projekt jest importowany do ścieżki `/opt/bitnami/projects`.
Restartowanie serwera Apache (w razie potrzeby):
```
sudo /opt/bitnami/ctlscript.sh restart apache
```
3. Implementacja Apache Virtual Hosts:
```
sudo chmod +x /opt/bitnami/projects/scripts/virt-hosts.sh
/opt/bitnami/projects/scripts/virt-hosts.sh
```
