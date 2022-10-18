# Dokumentacja

To repozytorium zawiera stronę projektową prostej platformy blogowej. Stos oprogramowania wykorzystanego w projekcie to:
- Stos [Bitnami Django (3.2.16)](https://bitnami.com/stack/django)
- Oracle VirtualBox (6.1.38)

Wstępna konfiguracja jest kluczowa w celu zapewnienia poprawnego działania stosu oprogramowania. Domyślnie obraz VM Bitnami wystawia strony domyślne na portach TCP 80, 443. Naszym celem jest implementacja blogu Django na tych portów, poprzez implementację Apache Virtual Hosts, zgodnie z zaleceniami [dokumentacji Bitnami](https://docs.bitnami.com/virtual-machine/infrastructure/django/get-started/deploy-django-project/).

Następnym celem było wstępne skonfigurowane podstawowych aspektów bloga oraz migracja bazy danych.

---
### TODO
- [X] Wystawianie serwera "na zewnątrz" - w dokumentacji bitnami
- [X] Implementacja template z [linka](https://djangocentral.com/building-a-blog-application-with-django/)
- [X] Podstawowy system komentarzy
- [X] Podstawowa nawigacja
- [X] Migracja z SQLite do PostgreSQL
- [X] Plik .gitignore
- [ ] Skrypt bash do zmian w systemie
	- [X] Skrypt do Apache VH
	- [X] Skrypty obsługi hasła w settings.py 
- [ ] Implementacja użytkowników
- [ ] Skany bezpieczeństwa
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
4. Skrypty dla baz danych **(ważne)**
Implementacja bazy danych opiera się o domyślne dane logowania do PostgreSQL, żeby dodać swoje domyślne hasło należy użyć skryptu:
```
sudo chmod +x /opt/bitnami/projects/scripts/set-pass.sh
/opt/bitnami/scripts/set-pass.sh
```
Przed przesłaniem zmian najlepiej cofnąć zmianę:
```
sudo chmod +x /opt/bitnami/projects/scripts/revert-pass.sh
/opt/bitnami/scripts/revert-pass.sh
```
