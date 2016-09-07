# Datenschutz
AOLV-Hitobito ist ausschliesslich über verschlüsselte Kommunikation erreichbar
(https-Verbindung). Somit können die übertragenen Adressdaten nicht von
Unberechtigten eingesehen werden.

Personen mit Login erhalten Zugriff auf die Daten derjenigen Gruppe(n), denen
sie zugeordnet sind. Der Umfang des Zugriffs ist abhängig von der Rolle:

* *Administrator:* Schreibzugriff auf die eigene Gruppe sowie darunterliegende
Teams
* *Leiter:* Lesezugriff auf die eigene Gruppe sowie darunterliegende
Teams
* *Mitglied:* Lesezugriff auf die eigene Gruppe

### Ebene Verband
Für die Gruppenart Verband existiert ausschliesslich die Rolle _Leiter_, es ist
nur ein einziges Benutzerkonto vorgesehen, welches für das Erstellen der
Adressetiketten für die AOLV-News verwendet wird. Mit diesem Konto können
sämtliche Adressen gelesen werden, mit Ausnahme von Personen mit der Rolle
"externes Mitglied" auf Ebene Verein. Für alle weiteren Verbandsaufgaben werden
entsprechende Teams erstellt.

#### Vorstand
Insbesondere werden AOLV-Vorstandsmitglieder nicht mit der Rolle _Leiter_ dem
AOLV zugeordnet, sondern mit der Rolle _Mitglied_ dem Team _Vorstand_. Der
Unterschied besteht darin, welche Daten ein Vorstandsmitglied mit seinem Login
sehen kann: Als _Leiter_ des AOLV wären sämtliche Adressdaten von Teams des
AOLV (NWK, Ausbildungsklub, ...) sowie auch sämtliche Adressdaten der Vereine
(ausgenommen externe Mitglieder) sichtbar, was nicht erwünscht ist. Als
_Mitglied_ im Team _Vorstand_ hat die Person nur lesenden Zugriff auf dieses
Team (sowie auf die Mitgliederdaten des eigenen Vereins, entsprechend der
zugeordneten Rolle im Verein).

### Ebene Verein
Das Rollenkonzept stellt sicher, dass Mitglieder von Verein A keine
Mitgliederdaten von Verein B sehen können (auch Administratoren und Leiter
können nur die eigene und darunter liegende Gruppen sehen).

*Spezialfall:* Personen mit Mitgliedschaften in mehreren Vereinen erhalten
Zugriff auf die Daten aller Vereine, denen sie zugeordnet sind. Dabei genügt
es, wenn einer der betreffenden Vereine dem User ein Login sendet: Ein
Login ist der Person zugeordnet, nicht der Rolle!

#### Vorstand
Analoge Überlegungen wie für Vorstandsmitgieder des Verbands gelten für 
Vorstandsmitglieder der Vereine: Es wird empfohlen, diese nicht als _Leiter_ im
Verein sondern als _Mitglied_ im Team _Vorstand_ zu erfassen. So kann
sichergestellt werden, dass kein Vorstandsmitglied ungerechtfertigten Zugang
zu Adressdaten erhält.

##### Beispiel
Wenn mehrere Vereine (darunter können auch ausserkantonale OL-Vereine oder
OL-fremde Vereine sein) gemeinsam einen Anlass organisieren, wird für das OK
unter dem Verein des Administrators ein Team erstellt. OK-Mitglieder aus
anderen Vereinen werden als externe Mitglieder diesem Team zugeordnet. Es ist
gerechtfertigt, dass Mitglieder des OK Zugriff erhalten auf diese Adressen,
Vorstandsmitglieder des Vereins, die nicht Teil des OK sind, sollten aber diese
Daten nicht erhalten.
