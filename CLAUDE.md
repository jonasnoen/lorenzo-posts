# Lorenzo Valenti · automatische Posts (Cloud-Workflow)

Dieses Repo ist Gedächtnis und öffentlicher Medien-Ablageort für den KI-Creator **Lorenzo Valenti**
(Instagram **@lorenzovalenti.life**, TikTok **lorenzovalenti.life**). Jede Sitzung, auch eine geplante
Aufgabe, liest zuerst diese Datei und `register.json`.

**Alles hier ist öffentlich.** Keine Zugangsdaten, Tokens, privaten Daten oder Entwürfe ablegen.
Nur fertige, freigegebene Medien, Referenzen, Musik und die Post-Liste.

Hintergrund, Entscheidungen des Nutzers und Verlauf: `KONTEXT.md`. Formatideen: `formats.md`.

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

## Nische und Ton

Italienischer Lifestyle, „Dolce Vita“: Altstadt, Meer, Terrassen, Vespa, Nachtleben, Training, Mode
(Leinen, Anzug). Lorenzo ist attraktiv und selbstbewusst; Formate mit bewundernden Blicken funktionieren.
Captions auf Englisch, kurz, eine Frage an die Zuschauer, 4–6 Hashtags.

**Regeln für Szenen mit anderen Personen:** nur frei erfundene Erwachsene (Mitte 20+, ausdrücklich so prompten),
nie echte Personen oder Prominente, nichts Sexuelles. Keine echten Orte als Werbung, keine Marken-Logos.
Keine Behauptung, dass eine Szene echt passiert ist.

**Virale Vorlagen:** Format, Bildaufbau, Hook und Bewegung von erfolgreichen Clips übernehmen, aber NIE fremdes
Material (Video, Gesichter, Ton) verwenden oder Lorenzo in fremde Clips einsetzen.

## Wochenplan (ein Post pro Tag, 19:30 Uhr Europe/Berlin)

| Mo | Di | Mi | Do | Fr | Sa | So |
|---|---|---|---|---|---|---|
| Reel | Foto | Reel | Foto/Karussell | Reel | Foto | Reel-Wiederholung des besten Formats |

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

- Montags: Metricool-Zahlen der letzten 7 Tage je Post (Aufrufe, Reichweite, Likes, Kommentare, Saves, Shares,
  neue Follower) in `register.json` unter `stats` eintragen; fehlende Werte als fehlend, nie erfinden.
- Montags zusätzlich EIN kurzer vidIQ-Outlier-Check (Instagram/TikTok, Nische italienischer Männer-Lifestyle,
  letzte 7 Tage). Neue Formate als Ideen in `formats.md` ergänzen. Keine vidIQ-Suche an anderen Tagen.
- Sonntag: das Format mit den besten Zahlen in neuer Szene wiederholen; bei zu wenig Daten ehrlich sagen.

## Bericht

Zum Schluss 2–3 Sätze auf Deutsch: was gepostet bzw. geplant wurde (Typ, Szene, Uhrzeit, Kosten, Monatssumme)
oder warum nichts.
