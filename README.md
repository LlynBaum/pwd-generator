# Password-Generator

### Projektbeschreibung
Dieses Projekt ist ein Bash-Skript, das verschiedene Arten von Passwörtern generieren kann. Es automatisiert die Erstellung von komplexen, wortbasierten und einfachen Passwörtern. Das Skript kann zufällige Zeichen, Wörter und Zahlen verwenden, um sichere Passwörter zu erstellen.

## Inhaltsverzeichnis
1. [Installation](#installation)
2. [Verwendung](#verwendung)
3. [Beispiele](#beispiele)
4. [Skriptbeschreibung](#skriptbeschreibung)

## Installation
Um dieses Projekt zu installieren und auszuführen, benötigen Sie eine Bash-Shell und die Datei `words.txt`, die eine Liste von Wörtern enthält. Befolgen Sie die folgenden Schritte:

1. Klonen Sie das Repository:
   ```bash
   git clone https://github.com/LlynBaum/pwd-generator.git
2. Navigieren Sie in das Projektverzeichnis:
   ```bash
   cd pwd-generator
3. Stellen Sie sicher, dass das Skript ausführbar ist:
   ```bash
   chmod +x pwd-generator.sh
4. Kontrollieren Sie ob die Datei `words.txt` vorhanden ist:
   ```bash
   ls
5. Führen Sie das Skript aus

## Verwendung
Um das Skript zu verwenden, führen Sie es mit einem der folgenden Parameter aus:

- `complex`: Generiert ein komplexes Passwort mit zufälligen Zeichen, Zahlen und Symbolen.
- `word-based`: Generiert ein Passwort, das aus vier zufälligen Wörtern besteht, die durch Bindestriche getrennt sind.
- `simple`: Generiert ein einfaches Passwort, das aus zwei Wörtern und einer Zahl besteht.

### Beispiele:
#### Komplexes Passwort:
```bash	
./pwd-generator.sh complex
```
Ausgabe: `OiJo{3DQOXLki/P`

#### Wortbasiertes Passwort:
```bash	
./pwd-generator.sh word-based
```
Ausgabe: `journey-avoid-suit-point`

#### Einfaches Passwort:
```bash	
./pwd-generator.sh simple
```
Ausgabe: `objectconnection407`

## Skriptbeschreibung
#### Das Skript password_generator.sh ist darauf ausgelegt, verschiedene Arten von Passwörtern zu generieren. Hier ist eine kurze Beschreibung der Hauptfunktionen:

- getComplex: Generiert ein komplexes Passwort mit einer Länge von 15 Zeichen, bestehend aus zufälligen Gross- und Kleinbuchstaben, Zahlen und Symbolen.
- getWordBased: Generiert ein wortbasiertes Passwort, das aus vier zufälligen Wörtern besteht, die durch Bindestriche getrennt sind.
- getSimple: Generiert ein einfaches Passwort, das aus zwei zufälligen Wörtern und einer Zahl besteht.
- getRandomWord: Wählt ein zufälliges Wort aus der Datei words.txt.
- checkForBreach: 
- getRandomNumber: Generiert eine zufällige Zahl innerhalb eines angegebenen Bereichs.
- getRandomLowerCaseChar und getRandomUpperCaseChar: Generieren zufällige Klein- bzw. Großbuchstaben.

