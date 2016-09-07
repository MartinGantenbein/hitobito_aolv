# Rollen
## Rollen der Gruppenart Verband
### Leiter
* Berechtigungen: Lesezugriff auf alle Personen, mit Ausnahme von Personen mit
  der Rolle "externes Mitglied" in der Ebene Verein. Vollzugriff auf die eigenen
  Daten. Wird für das Erstellen der Adressetiketten für den Versand der
  AOLV-News verwendet.
* Sichtbarkeit: Sichtbar für alle Leiter des Verbands.

## Rollen der Gruppenart Verein
### Administrator
* Berechtigungen: Vollzugriff auf Personen, denen eine Rolle im Verein oder in
  einem Team des Vereins zugeordnet ist. Wird für die Mitgliederverwaltung
  verwendet (Eintritte und Austritte, Adressänderungen, ...), kann
  Mailing-Listen erstellen (Empfängerkreis: Verein mit allen Teams).
* Sichtbarkeit: Sichtbar für alle Rollen von Verein und Verband.

### Leiter
* Berechtigungen: Lesezugriff auf Personen, denen eine Rolle im Verein oder in
  einem Team des Vereins zugeordnet ist. Vollzugriff auf  die eigenen Daten.
  Wird z.B. für das Erstellen von Adressetiketten verwendet.
* Sichtbarkeit: Sichtbar für alle Rollen von Verein und Verband.

### Mitglied
* Berechtigungen
  * Ohne Login: kein Zugriff.
  * Mit Login: Lesezugriff auf Personen, denen eine Rolle im Verein zugeordnet
    ist (aber nicht auf Personen in Teams des Vereins ohne Rolle im Verein).
    Vollzugriff auf die eigenen Daten.
* Sichtbarkeit: Sichtbar für alle Rollen von Verein und Verband.

## Rollen der Gruppenart Team
### Administrator
* Berechtigungen: Vollzugriff auf Personen, denen eine Rolle im Team oder in
  einem Unterteam des Teams zugeordnet ist. Wird für die Mitgliederverwaltung
  innerhalb des Teams verwendet (Eintritte und Austritte, Adressänderungen,
  ...), kann Mailing-Listen erstellen (Empfängerkreis: Team und Sub-Teams).
  Eine Team benötigt nicht zwingend einen Administrator, der
  Vereinsadministrator ist für alle diese Aufgaben ebenfalls berechtigt.
* Sichtbarkeit: Sichtbar für alle Administratoren und Leiter von Verband,
  Verein und übergeordneten Teams sowie für alle Rollen des Teams.
  
### Leiter
* Berechtigungen: Lesezugriff auf Personen, denen eine Rolle im Team oder in
  einem Team des Teams zugeordnet ist. Vollzugriff auf die eigenen Daten.
  Wird für Teammitglieder verwendet, die Mitgliederdaten benötigen aber keine
  Daten von Vereinsmitgliedern ausserhalb des Teams sehen sollen.
* Sichtbarkeit: Sichtbar für alle Administratoren und Leiter von Verband,
  Verein und übergeordneten Teams sowie für alle Rollen des Teams.

### Mitglied
* Berechtigungen
  * Ohne Login: kein Zugriff.
  * Mit Login: Lesezugriff auf Persone, denen eine Rolle im Team zugeordnet ist
    (aber nicht auf Personen in Sub-Teams des Teams). Vollzugriff auf die
    eigenen Daten.
* Sichtbarkeit: Sichtbar für alle Administratoren und Leiter von Verband,
  Verein und übergeordneten Teams sowie für alle Rollen des Teams.

### externes Mitglied
* Berechtigungen: gleich wie "Mitglied"
* Sichtbarkeit: Wie "Mitglied" aber nicht sichtbar für Leiter von Verband.
  Deshalb wird diese Rolle verwendet für Team-Mitglieder, welche nicht 
  Vereinsmitglieder sind.
  
  Beispiele:
  * der vereinsexterne J+S Coach, der Mitglied der Nachwuchsgruppe sein sollte,
    um bei Mailings an diese Gruppe berücksichtigt zu werden.
  * Inserenten im Vereinsorgan, die ein Belegexemplar erhalten und beim
    Etikettendruck nicht vergessen werden dürfen und somit dem Team
    "Heftversand" zugeordnet werden sollten.
