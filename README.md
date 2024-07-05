# Password-Generator

### Projektbeschreibung
Dieses Projekt ist ein Bash-Skript, das verschiedene Arten von Passwörtern generieren kann. Es automatisiert die Erstellung von komplexen, wortbasierten und einfachen Passwörtern. Das Skript kann zufällige Zeichen, Wörter und Zahlen verwenden, um sichere Passwörter zu erstellen.

## Inhaltsverzeichnis
1. [Überblick](#überblick)
2. [Autor](#autor)
3. [Funktionen](#funktionen)
4. [Verwendung](#verwendung)
5. [Beispiele](#beispiele)
6. [Skriptbeschreibung](#skriptbeschreibung)
7. [Installation](#installation)
8. [Beitrag](#beitrag)
9. [Lizenz](#lizenz)

## Überblick
Der Passwort-Generator ist ein einfaches Bash-Skript, das verschiedene Arten von Passwörtern generieren kann. Es ermöglicht Benutzern, komplexe, wortbasierte und einfache Passwörter zu erstellen und zu verwenden.

## Autor
Llyn Baumann & Kyle Meier

## Funktionen
- Generierung komplexer Passwörter mit zufälligen Zeichen, Zahlen und Symbolen.
- Generierung wortbasierter Passwörter, die aus vier zufälligen Wörtern bestehen.
- Generierung einfacher Passwörter, die aus zwei Wörtern und einer Zahl bestehen.
- Möglichkeit zur Überprüfung auf bekannte Sicherheitsverletzungen.
- Anpassbare Passwortlänge.
- Ausgabe des SHA-1 Hash des generierten Passworts (optional).

## Verwendung
Um das Skript zu verwenden, führen Sie es mit einem der folgenden Parameter aus:

- `complex`: Generiert ein komplexes Passwort mit zufälligen Zeichen, Zahlen und Symbolen.
- `word-based`: Generiert ein Passwort, das aus vier zufälligen Wörtern besteht, die durch Bindestriche getrennt sind.
- `simple`: Generiert ein einfaches Passwort, das aus zwei Wörtern und einer Zahl besteht.

Zusätzliche Optionen:
- `--length` oder `-l`: Spezifiziert die Länge des komplexen Passworts.
- `--hash` oder `-ha`: Gibt einen zusätzlichen Hash des generierten Passworts aus.
- `--help` oder `-h`: Zeigt die Hilfe mit den Optionen und Anweisungen an.

### Beispiele:
#### Komplexes Passwort:
```bash
./pwd-generator.sh complex --length 20 --hash
```
Ausgabe: `OiJo{3DQOXLki/P`
SHA-1: `5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8`

#### Wortbasiertes Passwort:
```bash
./pwd-generator.sh word-based --hash
```
Ausgabe: `journey-avoid-suit-point`
SHA-1: `4c4ab8b8a35b91bbf8044d07639e0a3efca04f56`

#### Einfaches Passwort:
```bash
./pwd-generator.sh simple
```
Ausgabe: `objectconnection407`

## Skriptbeschreibung
Das Skript `pwd-generator.sh` ist darauf ausgelegt, verschiedene Arten von Passwörtern zu generieren. Hier ist eine kurze Beschreibung der Hauptfunktionen:

- `getComplex`: Generiert ein komplexes Passwort mit einer Länge von 15 Zeichen, bestehend aus zufälligen Gross- und Kleinbuchstaben, Zahlen und Symbolen.
- `getWordBased`: Generiert ein wortbasiertes Passwort, das aus vier zufälligen Wörtern besteht, die durch Bindestriche getrennt sind.
- `getSimple`: Generiert ein einfaches Passwort, das aus zwei zufälligen Wörtern und einer Zahl besteht.
- `getRandomWord`: Wählt ein zufälliges Wort aus der Datei `words.txt`.
- `checkForBreach`: Überprüft, ob das generierte Passwort in bekannten Sicherheitsverletzungen enthalten ist.
- `sha1Hash`: Berechnet den SHA-1 Hash eines Passworts.
- `getRandomNumber`: Generiert eine zufällige Zahl innerhalb eines angegebenen Bereichs.
- `getRandomLowerCaseChar` und `getRandomUpperCaseChar`: Generieren zufällige Klein- bzw. Grossbuchstaben.

## Installation
Um dieses Projekt zu installieren und auszuführen, benötigen Sie eine Bash-Shell und die Datei `words.txt`, die eine Liste von Wörtern enthält. Befolgen Sie die folgenden Schritte:

1. Klonen Sie das Repository:
   ```bash
   git clone https://github.com/LlynBaum/pwd-generator.git
   ```
2. Navigieren Sie in das projektverzeichnis:
   ```bash
   cd pwd-generator
   ```
3. Stellen Sie sicher, dass die Datei `words.txt` vorhanden ist:
   ```bash
   ls
   ```
4. Stellen Sie sicher, dass das Skript ausführbar ist:
   ```bash
   chmod +x pwd-generator.sh
   ```
5. Führen Sie das Skript mit den gewünschten Parametern aus:
   ```bash
   ./pwd-generator.sh [option] [--length|-l <length>] [--hash|-ha]
   ```
## Beitrag
Wenn Sie einen Fehler gefunden haben oder eine Verbesserung vorschlagen möchten, können Sie gerne einen Beitrag leisten. Bitte erstellen Sie ein Issue oder ein Pull-Request mit Ihren Änderungen.

## Lizenz
Dieses Projekt ist lizenzfrei. Sie können es für persönliche oder Bildungszwecke verwenden und modifizieren.
