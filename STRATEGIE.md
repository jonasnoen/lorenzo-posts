# Strategie Lorenzo Valenti (verbindlich ab 03.11.2026)

## Entscheidungen des Nutzers (bestätigt)
- **Hauptrichtung: Stil + Dolce Vita.** Lorenzo ist ein italienischer Stil-Creator, dessen Welt man gerne verfolgt.
  Kern = italienischer Männerstil (Option „Italian Style Guide“), Welt = Dolce Vita, Form = redaktionelles Erzählen.
- **Körperbetonte Inhalte = ein Drittel, als Testarm** (nicht die ganze Marke).
- Langfristige, hochwertige Marke. **Keine Comedy. Kein „AI slop“.** Budget 50 €/Monat.
- Englisch bleibt während des Tests die einzige Sprache (kein Deutsch-Account parallel).
- Gesicht/Augen nicht ändern.

## Positionierung
- **Wer er ist:** Lorenzo Valenti, virtueller italienischer Stil-Creator, pendelt gedanklich zwischen Mailand und
  der Amalfiküste. Offen virtuell („Virtual model & creator“), Figur bleibt konsistent.
- **Persönlichkeit:** ruhig, aufmerksam, gelassen-selbstbewusst; mag gute Stoffe, kleine Rituale, Espresso im
  Stehen, Abendspaziergänge. Spricht wenig, aber präzise. Kein Angeber, kein Luxus-Protz, keine Motivationssprüche.
- **Nutzenversprechen:** „Wie Italiener sich anziehen und leben, in einfachen, nachmachbaren Ideen.“
  Jeder Post gibt EINE konkrete Idee mit: eine Kombination, eine Farbregel, ein Detail, ein Moment.
- **Zielgruppen-Hypothesen (beide werden getestet, keine bestätigt):**
  (A) Männer 20–40 mit Interesse an Stil und Herrenmode, (B) Publikum, das Lorenzo attraktiv findet.
  Stil-Posts zielen auf A, der Körper-Testarm auf B.

## Die drei Serien
1. **„Lorenzo's Wardrobe“** (Arm Mode/Styling): ein Kleidungsstück, ein Anlass oder eine Farbregel pro Post.
   Beispiele: ein Leinenhemd für drei Abende; Navy, Stein und Oliv; Loafer ohne Socken: wann ja, wann nein;
   der eine Strickpullover für den italienischen Herbst.
2. **„Milano to Amalfi“** (Arm Mode/Styling oder Karussell): dieselbe Figur, zwei Welten. Stadt-Look vs. Küsten-Look,
   gleicher Anlass, andere Umsetzung. Als Karussell (Slide 1 Mailand, Slide 2 Amalfi, …) oder Reel mit Schnitt.
3. **„A moment with Lorenzo“** (Arm Porträt/Atmosphäre): ein ruhiger Moment mit Blickkontakt und einem kurzen
   eigenen Gedanken in der Caption (2–3 Sätze, keine Kalendersprüche). Beispiele: erster Espresso am Fenster
   in Mailand im November; Regen auf der Piazza; letzte Fähre nach Positano.

Dazu: **Körper-Testarm** (Arm Dolce-Vita-Körper): Meer, Schwimmen, Terrasse, offenes Leinenhemd, Training im
Freien, Szenen mit bewundernden Blicken. Immer mit Stil-Bezug in der Caption (z. B. Badeshorts-Länge, Leinen am Meer).
**Fashion-/Glamour-Episode** (Format F6, siehe CLAUDE.md): etwa 1× pro Woche, zählt zum Arm Mode – Fashion-Show im Publikum (erste Reihe, Blick in die Kamera), von Frauen bewundert beim Vorbeilaufen in der Stadt, Ankunft aus Limousine. Kein Blitzlicht, keine Paparazzi, keine Fotowand.
Nachtleben-Crowd wie R001 zählt zum Körper-Arm.

## 4-Wochen-Test (Neustart; Zeitraum siehe `register.json` → `test`)
- **Täglich ein Post**, 19:30 Europe/Berlin: Mo, Mi, Fr Reel; Sa Karussell; **Di, Do, So Vorrat-Post** (Foto aus dem
  Vorrat, kein Video, meist 0 $). Entscheidung des Nutzers vom 03.11.2026: täglich posten, aber an den Vorrat-Tagen
  ohne neue Videogenerierung, damit Budget und Claude-Nutzungslimit reichen.
- **12 Reels, gleichmäßig auf 3 Arme**: je 4× Mode/Styling, 4× Körper/Lifestyle, 4× Porträt/Atmosphäre.
  Reihenfolge rotiert (Mo/Mi/Fr nie zweimal hintereinander derselbe Arm). Jeder Reel-Eintrag bekommt `"arm"`.
- **4 Karussells** (Serie „Milano to Amalfi“ oder „Lorenzo's Wardrobe“), 4–6 Bilder, 4:5.
- Vergleichbar halten: Reels 5–8 s, gleicher Schnittstil, gleiche Uhrzeit, Hook-Text oben.
- Budget: Reel ≈ 1,80 $ + Vorratbild 0,40 $, Karussell ≈ 2,40 $, Vorrat-Posts meist 0 $ → ≈ 9–10 $/Woche ≈ 38 $ in
  4 Wochen. Vorrat-Posts fließen nicht in den Arm-Vergleich ein.

## Qualitätsregeln (gegen generische KI-Inhalte)
- Jeder Post braucht eine **konkrete Idee** (Styling-Nutzen, Bildgeschichte oder eigener Gedanke). Ohne Idee kein Post.
- Caption: erklärt das Detail oder erzählt eine kleine Geschichte (2–4 kurze Sätze), dann eine echte Frage.
  Verboten: generische Motivationssätze, „living my best life“, beliebige Luxusorte, Comedy.
- Imaginäre Kleidung/Orte/Erlebnisse nie als echte Produktempfehlung, Hotelaufenthalt oder Test ausgeben.
  Keine echten Marken nennen oder taggen, solange es keine echte Kooperation gibt.
- Wiederkehrende Bildwelt: warmes natürliches Licht, Farben Navy · Stein · Oliv · Creme · Terrakotta,
  feste Orte (Mailänder Altbau-Wohnung mit Fenster, Mailänder Straßencafé, Amalfi-Terrasse, Hafen, Fähre).
  Wechsel aus Detail, Porträt und Ganzkörper.
- Vor Veröffentlichung prüfen: Gesicht = Referenz, Hände, Stoffe, Kleidung logisch, keine kaputte Schrift.

## Auswertung
- **Nach 48 Stunden und nach 7 Tagen** je Post aus Metricool (`getAnalyticsAvailableMetrics` → passende Metriken):
  Reichweite (wenn verfügbar Nicht-Follower), Aufrufe, durchschnittliche Wiedergabezeit, Saves, Shares, Profilbesuche,
  neue Follower. In `register.json` unter `stats.h48` bzw. `stats.d7`. Fehlende Werte als fehlend, nie erfinden.
- Kennzahlen pro Arm: (Saves + Shares) je Reichweite, Wiedergabezeit, neue Follower je 1.000 Reichweite (nur wenn
  zuordenbar). Gewinner erst ab mindestens 3 Posts je Arm benennen, Konzept dann in neuen Szenen wiederholen.
- Endauswertung am Ende des Testzeitraums als `auswertung/test-<monat>.md`. Der Nutzer entscheidet danach über den Mix.

## Noch offen (nicht ohne Nutzer entscheiden)
- Endgültige Zielgruppe (A oder B), Sprechvideos/Stimme (erst wenn die Figur Haltung hat), YouTube Shorts als
  dritte Plattform, Monetarisierung (Kooperationen erst mit verlässlichen Zahlen).
- Nutzer-Aufgabe: nach Woche 1 drei Posts im Profil anpinnen (Vorstellung, Stil, mediterrane Welt).
