# PraktikantenProjekt

Projekt des Praktikanten.

![Schreibtisch des Praktikanten](fotoSchreibtisch.webp)

## Projektbeschreibung

Dieses Repository enthält die Smart Contracts eines experimentellen Kryptowährungsprojekts, dieser Token hat eine Blacklistfunktion. Das Projekt wurde im Rahmen eines Praktikums entwickelt und besteht aus mehreren Solidity-Komponenten zur Verwaltung eines ERC20-ähnlichen Tokens sowie verschiedener administrativer Funktionen.

Die bereitgestellten Contracts dienen ausschliesslich Analyse-, Test- und Schulungszwecken.

## Projektstruktur

### KAPOToken.sol

Hauptcontract des KAPO-Tokens.

Dieser Contract enthält die grundlegenden Funktionen des Tokens, darunter die Verwaltung von Token-Beständen sowie die Durchführung von Transfers zwischen Wallet-Adressen.

### Treasury.sol

Contract zur Verwaltung projektbezogener Vermögenswerte.

Die Treasury-Komponente dient der zentralen Verwaltung von Beständen und administrativen Berechtigungen innerhalb des Projekts.

### AdminTools.sol

Sammlung administrativer Hilfsfunktionen.

Der Contract enthält Funktionen zur Steuerung und Konfiguration verschiedener Projekteinstellungen.

### WalletHelper.sol

Hilfscontract für Wallet-bezogene Funktionen.

Dient zur Bereitstellung zusätzlicher Informationen und Hilfsfunktionen für andere Komponenten des Projekts.

### Blacklist_V1.sol

Blacklist-System für Wallet-Adressen.

Der Eigentümer des Contracts kann einzelne Wallets auf eine Sperrliste setzen. Gesperrte Adressen können keine Token-Transfers durchführen, bis die Sperre wieder aufgehoben wird.

### Blacklist_V2.sol

Blacklist-System für Wallet-Adressen.

Der Eigentümer des Contracts kann einzelne Wallets auf eine Sperrliste setzen. Gesperrte Adressen können keine Token-Transfers durchführen, bis die Sperre wieder aufgehoben wird.


### KAPOCompliance.sol

Alternative Implementierung administrativer Compliance-Funktionen.

Dieser Contract erweitert die Verwaltungsmöglichkeiten des Eigentümers und enthält zusätzliche Mechanismen zur Kontrolle von Wallet-Adressen innerhalb des Ökosystems.

## Hinweise

Die Contracts befinden sich noch in einem frühen Entwicklungsstadium und enthalten verschiedene Kommentare, Testfunktionen und Dokumentationsfragmente des ursprünglichen Praktikantenprojekts.

Vor einer produktiven Verwendung wären eine vollständige Sicherheitsprüfung, ein Code-Review sowie eine technische Überarbeitung erforderlich.

