# Lorenzo Valenti · automatische Posts (Cloud-Workflow)

Dieses Repo ist Gedächtnis und öffentlicher Medien-Ablageort für den KI-Creator **Lorenzo Valenti**
(Instagram **@lorenzovalenti.life**, TikTok **lorenzovalenti.life**). Jede Sitzung, auch eine geplante
Aufgabe, liest zuerst diese Datei und `register.json`.

**Alles hier ist öffentlich.** Keine Zugangsdaten, Tokens, privaten Daten oder Entwürfe ablegen.
Nur fertige, freigegebene Medien, Referenzen, Musik und die Post-Liste.

**Strategie und 4-Wochen-Test: `STRATEGIE.md` (verbindlich).** Hintergrund und Verlauf: `KONTEXT.md`. Formatideen: `formats.md`.

**Getrennt von Jonas Noen:** Niemals Dateien in `jonasnoen/jonasnoen-posts` ändern und niemals die
Metricool-Marke `jonas.noen` (blogId 7001759) für Lorenzo benutzen.

## Identität (verbindlich)

- Referenzen in `assets/reference/`:
  - `ref_a.png` = **Gesicht** (Hauptreferenz): helle blaugrüne Augen mit natürlichem Glanz, dunkelbraunes
    welliges Haar, kurzer Bart, ca. 27 Jahre.
  - `ref_b.png` = **Körper**: groß (~2 m), breite Schultern, volle Brust, schmale Taille, definiert.
  - `turnaround_a.jpg` = realistische Ansicht vorne / schräg / Profil / Rücken (für Szenen aus anderen Winkeln).
  - `profil.jpg` = aktuelles Profilbild.
- Bei JEDER Bildgenerierung `ref_a.png` UND `ref_b.png` als Referenzen anhängen (Raw-URL mit Commit-SHA),
  bei Rücken-/Seitenansichten zusätzlich `turnaround_a.jpg`.
- Look: realistisches Handyfoto, natürliche Haut mit Poren, kein Studio-Glanz, kein Plastik-Look.
- Referenzbilder selbst NIE als Post veröffentlichen. Immer eigene, neue Szenen.

## Positionierung und Ton (seit 03.11.2026, Details in `STRATEGIE.md` — ZUERST LESEN)

Lorenzo ist ein **italienischer Stil-Creator mit Dolce-Vita-Welt**. Kern ist Männerstil, eine konkrete, nachmachbare
Idee pro Post. Drei Serien: „Lorenzo's Wardrobe“, „Milano to Amalfi“, „A moment with Lorenzo“. Körperbetonte
Inhalte sind ein Testarm (ein Drittel der Reels), nicht die ganze Marke. **Keine Comedy, kein generischer KI-Content.**
Captions auf Englisch: Detail erklären oder kleine Geschichte (2–4 Sätze), dann eine echte Frage, 4–6 Hashtags.
Keine Motivationssprüche, keine echten Marken nennen oder taggen.

**Regeln für Szenen mit anderen Personen:** nur frei erfundene Erwachsene (Mitte 20+, ausdrücklich so prompten),
nie echte Personen oder Prominente, nichts Sexuelles. Keine echten Orte als Werbung, keine Marken-Logos.
Keine Behauptung, dass eine Szene echt passiert ist.

**Virale Vorlagen:** Format, Bildaufbau, Hook und Bewegung von erfolgreichen Clips übernehmen, aber NIE fremdes
Material (Video, Gesichter, Ton) verwenden oder Lorenzo in fremde Clips einsetzen.

## Wochenplan im 4-Wochen-Test (03.11.–30.11.2026, 19:30 Uhr Europe/Berlin)

| Mo | Di | Mi | Do | Fr | Sa | So |
|---|---|---|---|---|---|---|
| Reel | – | Reel | – | Reel | Karussell | – |

- Reels rotieren über drei Arme (`"arm"`: `mode`, `koerper`, `portraet`), bis jeder Arm 4 Reels hat; nie zweimal
  hintereinander derselbe Arm. Karussell = Serie „Milano to Amalfi“ oder „Lorenzo's Wardrobe“. Siehe `STRATEGIE.md`.
- An Tagen ohne Post („–“) nichts generieren und nichts posten, nur ggf. die 48-h-/7-Tage-Auswertung.
- Nach dem 30.11.: Endauswertung schreiben, dann so weitermachen, bis der Nutzer den neuen Mix festlegt.
- Höchstens ein Post pro Tag. Vorher in Metricool und `register.json` prüfen, ob heute schon etwas geplant
  oder veröffentlicht ist. Wenn ja: nichts tun.
- Ein Eintrag mit Status `ready` in `register.json` wird zuerst verwendet (egal welcher Wochentag).
- Ist das Budget erreicht: nur noch Fotos aus günstigen Läufen oder gar nichts; nie überziehen.

## Budget (Pflicht)

- Limit: **50 USD pro Kalendermonat** für alle Generierungen (Bild, Video, Musik), siehe `register.json`.
- Vor jeder bezahlten Generierung: Summe `costUsd` des laufenden Monats + Schätzung (`estimate_only`) prüfen.
  Würde das Limit überschritten: nicht generieren, im Bericht melden.
- Tatsächliche Kosten (aus der ElevenLabs-Antwort, `price_cents`) im Eintrag als `costUsd` speichern.
- Richtwerte: Bild Nano Banana Pro 2K ≈ 0,40 $; Video Kling 3.0 Pro 5 s 1080p ohne Ton ≈ 0,56 $;
  Musik 12 s ≈ 0,03 $; Geräusch ≈ 0,003 $.

## Ablauf Foto-Post

1. Szene wählen (Nische oben, Formatkatalog in `formats.md` falls vorhanden), kein Duplikat (Szene UND Blickwinkel
   gegen `register.json` prüfen).
2. ElevenLabs: Flow anlegen, `ref_a.png` + `ref_b.png` per `creative_attach_reference_file` (Raw-URL) anhängen,
   Bildknoten `gemini-3-pro-image`, `aspect_ratio` **4:5**, `resolution` 2K, 2 Varianten.
3. Ergebnisse herunterladen und ANSEHEN: Gesicht muss zur Referenz passen, Hände/Finger korrekt, keine
   kaputte Schrift im Hintergrund, keine Extra-Gliedmaßen. Bestes Bild nehmen; wenn beide schlecht: einmal neu,
   dann aufgeben und melden.
4. Für TikTok zusätzlich ein 9:16-Bild (gleicher Prompt mit 9:16) ODER das Foto als kurzes Zoom-Video (ffmpeg,
   6 s, langsamer Zoom, Musik aus `assets/music/`).

## Ablauf Karussell (samstags)

1. Eine Idee, 4–6 Bilder, Serie „Milano to Amalfi“ (abwechselnd Stadt/Küste, gleicher Anlass) oder
   „Lorenzo's Wardrobe“ (ein Teil, mehrere Kombinationen; Detail + Ganzkörper + Porträt). Slide 1 = stärkstes Bild.
2. Wie Foto-Post, aber alle Bilder in EINEM Flow mit denselben Referenzen und gleicher Lichtstimmung, `aspect_ratio`
   4:5, je Bild 1 Variante (bei Fehler einzeln neu). Kleidung und Ort bleiben über alle Slides logisch konsistent.
3. Optional dezenter Text auf Slide 1 (Titel der Serie) per PIL, keine Textwände.
4. Metricool: Instagram `type` POST mit allen Bildern in `media` (Karussell); TikTok als Foto-Post mit denselben
   Bildern im Format 9:16 (Bilder mit Unschärfe-Rand auf 1080×1920 bringen) oder als 8-s-Slideshow-Video mit Musik.

## Ablauf Reel

1. Startbild wie beim Foto, aber `aspect_ratio` **9:16**, 3 Varianten; bestes wählen.
2. Videoknoten `kling-3-pro`, 9:16, 5 s, 1080p, `generate_audio` false; Startbild per
   `creative_add_flow_asset_node` (generation_id) an Port `start_frame`. Erst `estimate_only`, dann starten.
3. Video herunterladen, Einzelbilder ansehen (Gesicht stabil, keine Verformungen). Bei Fehlern höchstens EIN
   neuer Versuch.
4. Schnitt mit `scripts/edit_reel.sh roh.mp4 "Hook Zeile 1" "Zeile 2" posts/<ID>/reel.mp4 [musik] [atmo]`:
   kurzer Zoom-In, Hook-Text oben (erste 3 s), Musik aus `assets/music/` (oder neu generiert, instrumental) +
   leise Atmo, Ausblenden am Ende, 1080×1920. Passende neue Musik/Atmo nach `assets/music/` legen.

## Veröffentlichen über Metricool

1. Lorenzos Metricool-Marke: **„Lorenzo Valenti“, blogId 7732285** (Instagram `lorenzovalenti.life`, TikTok `lorenzovalenti.life`, Zeitzone Europe/Berlin). Per `getBrandSettings` bestätigen. Ist sie NICHT
   vorhanden: nichts posten, im Bericht melden „Lorenzo ist noch nicht in Metricool verbunden“.
2. Dateien ins Repo, Eintrag in `register.json` mit Status `sending`, committen und pushen.
3. Planen für HEUTE 19:30 Europe/Berlin (liegt das in der Vergangenheit: 10 Minuten ab jetzt), `autoPublish` true.
   Medien-URL immer `https://raw.githubusercontent.com/jonasnoen/lorenzo-posts/<commit-sha>/<pfad>`.
   - Instagram: Reel bzw. Post, Caption aus dem Eintrag.
   - TikTok: Titel ist Pflicht, `privacyOption` PUBLIC_TO_EVERYONE.
   - **KI-Kennzeichnung immer einschalten** (Instagram und TikTok, Felder für AI-generated / AIGC).
4. Metricool-IDs und Status `scheduled` eintragen, committen, pushen.
5. Unklare Antwort beim Planen: Status `unknown`, NICHT erneut senden, Nutzer per Push-Nachricht bitten,
   in Metricool nachzusehen. Einträge mit `sending`/`unknown` immer zuerst klären.

## Auswertung

- Bei JEDEM Lauf: für Posts, die 48 h bzw. 7 Tage alt sind, Metricool-Zahlen holen (`getAnalyticsAvailableMetrics`,
  dann `getAnalyticsDataByMetrics`): Reichweite (Nicht-Follower falls verfügbar), Aufrufe, Wiedergabezeit, Saves,
  Shares, Profilbesuche, neue Follower → `register.json` `stats.h48` / `stats.d7`. Fehlende Werte als fehlend, nie erfinden.
- Montags zusätzlich ein kurzer vidIQ-Outlier-Check (letzte 7 Tage) mit ZWEI Suchen: (1) KI-Influencer selbst
  („AI influencer, virtual model, virtual creator, AI-generated male model“) und (2) Model-/Event-/Lifestyle-Nische
  („male model, fashion week, runway, red carpet, paparazzi, Italian lifestyle“). Neue Formate als Ideen in
  `formats.md` ergänzen (Muster erst ab zwei Belegen). Keine vidIQ-Suche an anderen Tagen.
- Event-Format F6 (Runway/Fotowand/Paparazzi) nur als gelegentliche Fashion-Episode, höchstens alle zwei Wochen,
  zählt zum Arm `mode`. Nur erfundene Events, keine echten Eventnamen, Logos, Marken oder Prominenten.
- Gewinner erst ab 3 Posts je Arm benennen; Endauswertung am 30.11. nach `STRATEGIE.md`.

## Bericht

Zum Schluss 2–3 Sätze auf Deutsch: was gepostet bzw. geplant wurde (Typ, Szene, Uhrzeit, Kosten, Monatssumme)
oder warum nichts.
