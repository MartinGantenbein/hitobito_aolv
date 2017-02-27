# Hinweise für Administratoren
Administratoren verwalten Mitglieder und Teams. Dabei ist es wichtig,
das [Rollenkonzept](roles.md) und die damit verbundenen Belange betreffend
[Datenzugriff](security.md) zu verstehen und zu berücksichtigen.

## Mitgliederverwaltung
Die Verwaltung von Mitgliedern umfasst die folgenden Aufgaben:
* Erfassung und Mutation der Mitgliederdaten
* Zuordnung von Rollen gemäss [Rollenkonzept](roles.md)
* Entziehung von Rollen bei Austritten / Änderung der Aufgaben
* Versand von Logins an Administratoren, Leiter und eventuell Mitglieder
* Erstellung von Mailing-Listen

### Löschen von Personen
Bei Austritten aus dem Verein werden der enstsprechenden Person nur die
Rolle im Verein entzogen, eine Löschung ist nicht vorgesehen. In begründeten
Fällen (z.B. Duplikat) kann der Verbands-Administrator eine Löschung
vornehmen.

## Teamverwaltung
Die Verwaltung von Teams beinhaltet:
* Erfassen von Teams
* Instruktion von Team-Administratoren (es ist auch möglich, dass der
Administrator des Vereins diese Aufgabe für einzelne Teams übernimmt)
* Entfernen von Teams wenn angezeigt (bei temporären Teams z.B. für die 
Organisation von Anlässen)

## Hierarchie der Mitgliedschaften
Bei der Zuordnung von Rollen stellt sich die Frage, ob ein Mitglied eines Teams
auch als Mitglied des Vereins (bzw. der übergeordneten Gruppe) zugeordnet werden
soll. Aus Sicht des Verbands spielt dies keine Rolle, wie oben erklärt erhält
die Person in beiden Fällen die AOLV-News und sie wird in beiden Fällen bei den
Mitgliederzahlen korrekt berücksichtigt.

Beispielsweise muss ein Mitglied der Nachwuchsgruppe nicht unbedingt als
Vereinsmitglied zugeordnet werden, es erhält auch so die AOLV-News und wird in
der Zählung der Mitglieder berücksichtigt. Es ist trotzdem zu empfehlen, alle
Vereinsmitglieder mit der Rolle _Mitglied_ dem Verein zuzuordnen, auch wenn sie
eine Rolle in einem Team des Vereins haben. Dies schafft Klarheit und
vereinfacht die Erstellung von korrekten (vollständigen) Datenexporten,
Mailinglisten oder Adressetiketten.

## externe Mitglieder
Unter Umständen haben Vereine Teams mit Mitgliedern, die nicht Vereinsmitglieder
sind. Diese Personen müssen dem Team mit der Rolle _externes Mitglied_
zugeordnet werden, damit sie bei der Mitgliederzählung und beim News-Versand
korrekt ausgeschlossen werden.

### Beispiele
* vereinsexterne OK-Mitglieder
* Lagerteilnehmer aus anderen Vereinen
* Kursteilnehmer, die (noch) nicht Vereinsmitglied sind
* J+S-Coach, der nicht Vereinsmitglied ist (aber im Team _Nachwuchsgruppe_ sein
sollte um die entsprechenden Informationen zu erhalten)

## Versand von Logins
Aktuell besteht ein Problem mit der Funktion "Login schicken" auf der Personen-Seite,
der versandte Link ist nicht korrekt und Passwort-Setzen funktioniert damit nicht.
Als Workaround kann der Link "Passwort vergessen" auf der Login-Seite verwendet werden,
damit wir ein korrekter Link zum Passwort-Setzen versandt.
