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

- **Neu seit 03.11.2026 (Entscheidung des Nutzers):** Lorenzo ist **glatt rasiert**.
- Referenzen in `assets/reference/` (**vom Nutzer gewählt 03.11.2026 23:21**), beide zeigen DENSELBEN Mann:
  - `ref_e_terrasse_2026-11-03.jpg` (erstes Bild) und `ref_e_strand_2026-11-03.jpg` (zweites Bild): Gesicht wie das
    ChatGPT-Original (kräftige gerade Brauen, leuchtend eisblaue Augen, scharfer Kiefer, Sommersprossen, zerzauste
    dunkelbraune Locken, ca. 27) UND der gewünschte Körper (sehr muskulös, volle Brust, breite runde Schultern, tiefes
    Sixpack, schmale Taille). Muskelmasse genau so, nicht massiger, nicht schlanker.
  - `ref_f_oberkoerperfrei_2026-11-03.jpg` = **feste Körperreferenz (vom Nutzer bestätigt 23:30)**, IMMER als drittes Bild
    anhängen: Frontalansicht vor weißer Wand, oberkörperfrei, Muskelmasse und Proportionen verbindlich.
  - Lieblingsbild des Nutzers (Blick + Körper): Vorrat S013 (Balkon, offenes Leinenhemd, Golden Hour). Diesen intensiven,
    ruhigen Blick in die Kamera als Standard-Mimik nehmen.
  - Herkunft: `ref_sitzend_2026-11-03d.png` (ChatGPT-Gesicht des Nutzers), `ref_ganzkoerper_2026-11-03c.png`.
  - Überholt, NICHT mehr anhängen: `ref_gesicht_2026-11-03*.png`, `ref_b_koerper_ohne_kopf.png`, `ref_koerper_ohne_kopf_2026-11-03c.png`, `ref_a.png`, `ref_b.png`, `turnaround_a.jpg`.
  - `profil.jpg` = aktuelles Profilbild (noch altes Gesicht, bei Gelegenheit neu).
- **Bildmodell: `gpt-image-2`** (dasselbe wie ChatGPT, hält dieses Gesicht als einziges treu), `quality` high,
  `resolution` 2K, `aspect_ratio` 4:5 bzw. 9:16. Gemini/Seedream/Flux verändern das Gesicht, nicht verwenden.
- Bei JEDER Bildgenerierung genau diese zwei anhängen (Raw-URL mit Commit-SHA). Im Prompt: „The same man as in both
  reference images (same person): keep his face, eyes, eyebrows, hair and his body build exactly as in the references, including the same muscle size and proportions“.
- Proportionen: bei Körperbildern immer „head relatively small compared to his very wide shoulders (about three head-widths), neck in proportion, no oversized head“ und „photo from about three metres away“.
- Natürlich wirken lassen: „unposed iPhone snapshot taken by a friend“, echtes (auch hartes) Tageslicht, Poren,
  kleine Unregelmäßigkeiten, „no airbrushing, no beauty filter, normal phone colours, slight noise“.
- Immer **frisch aus den Referenzen** generieren, keine Bearbeitungsketten (Bild → Edit → Edit macht das Gesicht künstlich).
- Look: natürliches Handyfoto, weiches natürliches Licht, echte Haut, nicht überretuschiert, kein Plastik-Look.
  Mimik: ruhig, intensiv, subtiles Halblächeln/Smirk; beim Lachen leise mit geschlossenem Mund, kein breites Grinsen.
- Immer „exactly two arms and two hands“ in den Prompt; Selfie-Arme vermeiden (lieber „photo taken by a friend“).
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
| Reel | Vorrat-Post | Reel | Vorrat-Post | Reel | Karussell | Vorrat-Post |

- Reels rotieren über drei Arme (`"arm"`: `mode`, `koerper`, `portraet`), bis jeder Arm 4 Reels hat; nie zweimal
  hintereinander derselbe Arm. Karussell = Serie „Milano to Amalfi“ oder „Lorenzo's Wardrobe“. Siehe `STRATEGIE.md`.
- **Vorrat-Post (Di/Do/So)**: KEIN Video generieren. Ein Bild aus dem Vorrat (`register.json` → `stock`, Status
  `stock`) als Foto-Post: Instagram 4:5 Bild, TikTok 6-s-Zoom-Video mit Musik aus `assets/music/` (ffmpeg, kostenlos).
  Gibt es keinen passenden Vorrat: EIN Foto erzeugen (2 Varianten, ≈ 0,80 $), die zweite gute Variante in den Vorrat.
  Vorrat-Posts zählen zu keinem Test-Arm (`"arm": "vorrat"`) und gehören thematisch zu einer der drei Serien.
- **Vorrat aufbauen**: Bei jedem Reel- und Karussell-Lauf alle guten, nicht verwendeten Varianten (ansehen: Gesicht,
  Hände, keine Fehler) als `posts/stock/S###.jpg` (4:5-Zuschnitt) speichern und in `register.json` unter `stock` mit
  Szene, Serie und Status `stock` eintragen. Zusätzlich pro Reel-Lauf EIN extra 4:5-Bild derselben Szene in anderer
  Pose/Einstellung erzeugen (≈ 0,40 $). Ein Vorrat-Bild nie zweimal posten (nach Verwendung Status `used` + Post-ID).
  Nie zwei Tage hintereinander Bilder derselben Szene posten.
- Nach dem 30.11.: Endauswertung schreiben, dann so weitermachen, bis der Nutzer den neuen Mix festlegt.
- Höchstens ein Post pro Tag. Vorher in Metricool und `register.json` prüfen, ob heute schon etwas geplant
  oder veröffentlicht ist. Wenn ja: nichts tun.
- Ein Eintrag in `posts` mit Status `ready` wird zuerst verwendet (egal welcher Wochentag). `stock`-Einträge nur an Vorrat-Tagen.
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
2. ElevenLabs: Flow anlegen, `ref_e_terrasse_2026-11-03.jpg` + `ref_e_strand_2026-11-03.jpg` + `ref_f_oberkoerperfrei_2026-11-03.jpg` (Körper, immer) per `creative_attach_reference_file` (Raw-URL) anhängen,
   Bildknoten `gpt-image-2` (quality high), `aspect_ratio` **4:5**, `resolution` 2K, 2 Varianten (≈ 0,38 $ je Bild).
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
