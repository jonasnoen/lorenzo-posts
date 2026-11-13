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
- **Referenzen (04.11.2026, vom Nutzer freigegeben) – in `assets/reference/`, IMMER alle vier (i1–i4) verbinden – i4 gehört fest zur Referenz-Collage (Nutzer 13.11.):**
  - `ref_i1_gesicht_frontal.jpg`, `ref_i2_gesicht_dreiviertel.jpg` (Gesicht), `ref_i3_koerper_final.png` (Körper).
  - Aussehen: ca. 24–25 (nicht älter machen), kräftige gerade dunkle Brauen, eisblaue Augen, kräftiger Kiefer,
    Sommersprossen, zerzauste dunkelbraune Locken; sehr muskulös, volle Brust, breite runde Schultern, tiefes Sixpack,
    schmale Taille. Mimik: ruhiger, intensiver Blick, subtiles Halblächeln mit geschlossenem Mund.
  - Nie Weichzeichner-/Glow-Look: immer „sharp focus, crisp detail, no soft focus, no glow, no haze“ in den Prompt.
  - Alle älteren Referenzbilder und Vorrat-Bilder S001–S015 am 04.11. auf Wunsch gelöscht (nur Git-Historie).
    Videos bleiben. `profil.jpg` = Profilbild seit 06.11. (enger Ausschnitt aus dem Gassen-Foto S016).
- **Bildmodell (Nutzer 03.11. 23:44): `gemini-3-pro-image`** (Nano Banana Pro), `resolution` 2K, `aspect_ratio` 4:5 bzw. 9:16.
  Mit Set i hält Nano Banana das Gesicht (Vergleich 04.11.); Prompt immer „about 24, do not make him older“.
  `gpt-image-2` (quality high) nur für enge Nahaufnahmen, wenn Gemini das Gesicht verändert.
- Im Prompt bei Gemini immer: „Face, head and hair are an exact copy of the FIRST image: same face width and shape, same
  cheekbones and strong jaw, do not make the face narrower or longer“ und „Hair: medium chestnut-brown tousled curls with
  lighter sun-kissed caramel-brown strands, NOT black, NOT dark espresso“.
- Bei JEDER Bildgenerierung alle vier Referenz-Knoten (i1–i4) des Master-Flows verbinden. Im Prompt: „The same man as in all four
  reference images (same person): keep his face, eyes, eyebrows, hair and his body build exactly as in the references, including the same muscle size and proportions“.
- **Master-Flow in ElevenLabs (Nutzer 13.11.2026, PFLICHT): „Lorenzo · Referenzen (Master)“, flow_id `PhDE8w0Fz0PqYrO08mW5`.**
  Darin liegen NUR seine 3 Referenzen fest als Knoten: i1 Gesicht frontal `RTQLq5OV83lQ1TRTR7En`, i2 Gesicht Dreiviertel
  `aVmY7pT7Ec1LlEBrXzIf`, i3 Körper `S2vV5hsBdm0dkd6xaTJl`, **i4 Größe `HtkRNfkZNXyhJ83Suxk4`** (Nutzer 13.11.: ca. 2,00 m, einen ganzen Kopf größer als alle,
  Leute neben ihm reichen bis zur Schulter – Datei `assets/reference/ref_i4_groesse.jpg`; fester Teil der Referenz-Collage, IMMER
  mit verbinden; bei Szenen mit anderen Personen im Prompt „a full head taller than everyone around him“). ALLE neuen Lorenzo-Bilder und -Videos in DIESEM Flow erzeugen
  (neuer Bild-/Videoknoten mit `connect_from` auf alle 4 Referenz-Knoten i1–i4), KEINEN neuen Flow anlegen, Referenzen NICHT neu
  anhängen. Nie Bilder anderer Charaktere (Alessia, Kairo) in diesen Flow legen oder damit verbinden.
- Proportionen: bei Körperbildern immer „head relatively small compared to his very wide shoulders (about three head-widths), neck in proportion, no oversized head“ und „photo from about three metres away“.
- Natürlich wirken lassen (Nutzer 23:30: „sollten halt natürlich bleiben“): „unposed iPhone snapshot taken by a friend“, echtes (auch hartes) Tageslicht, Poren,
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

**Mehr oberkörperfrei (Nutzer 12.11.2026):** Lorenzo deutlich öfter ohne Shirt zeigen: Arm `koerper` immer oberkörperfrei
(Strand, Boot, Bucht, Pool, nach dem Schwimmen, Sport), bei Vorrat-Posts oberkörperfreie Bilder bevorzugen, und auch in
`mode`-Szenen gern offenes Hemd über nacktem Oberkörper. Proportions-Sätze für Körperbilder beachten.

**Sexy Posen (Nutzer 12.11.2026):** Lorenzo immer in selbstbewussten, sexy Model-Posen zeigen – z. B. Hand durchs Haar,
Hemd lässig offen, Schulter zur Kamera gedreht, leicht angespannte Arme/Brust, intensiver Blick in die Kamera mit Halblächeln.
Im Prompt immer: „He strikes a confident, sexy, masculine model pose (for example running a hand through his hair, one shoulder
turned towards the camera, an intense look into the lens with a subtle half smile)“. Nichts Explizites, Inhaltsgrenzen bleiben.

**Glänzende Haut ab und zu (Nutzer 12.11.2026):** etwa jedes dritte Bild (v. a. Arm `koerper`, Strand/Boot/Pool/nach dem Sport)
mit glänzender Haut: „his skin has a natural glossy sheen from sunscreen and the sun, light reflecting on his shoulders,
chest and arms“. Dann den Satz „no glow“ im Qualitätsteil durch „no soft-focus glow“ ersetzen, damit sich beides nicht widerspricht.

**Glamour-Episoden ab und zu (Nutzer 12.11.2026, etwa 1× pro Woche, zählt zum Arm `mode`, abwechselnd):**
1. **Von Frauen bewundert:** Lorenzo läuft in der Stadt (belebte Einkaufsstraße in Mailand, Gasse in Rom, Promenade) an Leuten vorbei –
   wirkt am natürlichsten; zwei bis drei erfundene
   Frauen (ausdrücklich „adult women in their mid-twenties“) drehen sich nach ihm um, lächeln, flüstern sich etwas zu. Elegant,
   nichts Sexuelles, kein Körperkontakt. Lorenzo blickt in die Kamera.
2. **Fashion-Show im Publikum (Nutzer 12.11.):** Lorenzo sitzt in der ersten Reihe einer erfundenen Fashion Show, Models laufen
   unscharf im Hintergrund über den Laufsteg, Lorenzo schaut direkt in die Kamera, Augen scharf und gut sichtbar.
   KEIN Blitzlicht, KEINE Paparazzi, keine Fotowand.
3. **Ankunft aus der Limousine (Nutzer 12.11.):** steigt hinten aus einer schwarzen Luxus-Limousine bzw. einem teuren Sportwagen
   ohne Logo/Markenzeichen – irgendwo im Alltag (vor einem Hotel, Restaurant, am Hafen, auf einer Stadtstraße), NICHT bei einer
   Fashion Show oder einem Event. Fahrer hält die Tür, normales Tageslicht, Blick in die Kamera. Kein Blitzlicht, keine Paparazzi.
Immer: nur erfundene Events, keine echten Eventnamen, Marken, Logos, Kennzeichen oder Prominenten; keine Behauptung, es sei echt.

**Neue Formate L1–L6 (Nutzer 13.11.2026, Details in `formats.md`):** Felsen nach dem Schwimmen, Bootsleiter, Spiegel-Selfie nach dem Training,
extreme Nahaufnahme im Morgenlicht, Studio-Portrait vor weißer Wand, abends im Bett. Bei der Szenenwahl bevorzugt einsetzen und abwechseln.

**Format „Krasser Kontrast“ (Nutzer 13.11.2026: „krassere Unterschiede, nicht so semi“; 1–2× pro Woche, Arm `koerper` oder `mode`):**
Lorenzo passt maximal NICHT in die Szene, Umstehende (erfundene Erwachsene) reagieren deutlich. Für dieses Format ist ein
trockener, ruhiger Humor erlaubt (Ausnahme von „keine Comedy“): Lorenzo bleibt völlig gelassen, Halblächeln in die Kamera.
Ideen (abwechseln): im Maßanzug um 6 Uhr auf dem Fischmarkt zwischen Fischern in Gummistiefeln · riesig und muskulös in einer
Ballettklasse für Erwachsene zwischen zierlichen Tänzerinnen · oberkörperfrei beim Senioren-Aquagym zwischen staunenden älteren
Damen · im Smoking im Kuhstall beim Melken · quetscht sich in einen winzigen alten Kleinwagen · trägt bei einer Hochzeit als Gast
die ganze Hochzeitstorte allein · im Leinenanzug auf dem Bauernmarkt mit einem riesigen Kürbis unter dem Arm.
Hook-Text kurz und trocken (z. B. „Wrong place, right outfit“). Respektvoll, nichts Sexuelles, keine Klischees über Ethnien/Länder.

**Format „Reaktion im Alltag“ (bleibt zusätzlich, Nutzer 13.11.2026, etwa 1× pro Woche):** Lorenzo ist riesig und extrem
muskulös – mitten in normalen Alltagsszenen (Café-Theke, Bank-Schlange, Supermarkt, Aufzug, Bahnsteig) müssen die Leute
neben ihm (erfundene Erwachsene) sichtbar zu ihm HOCHSCHAUEN, staunen, sich umdrehen. Größenunterschied deutlich im Bild.

**Regeln für Szenen mit anderen Personen:** nur frei erfundene Erwachsene (Mitte 20+, ausdrücklich so prompten),
nie echte Personen oder Prominente, nichts Sexuelles. Keine echten Orte als Werbung, keine Marken-Logos.
Keine Behauptung, dass eine Szene echt passiert ist.

**Virale Vorlagen:** Format, Bildaufbau, Hook und Bewegung von erfolgreichen Clips übernehmen, aber NIE fremdes
Material (Video, Gesichter, Ton) verwenden oder Lorenzo in fremde Clips einsetzen.

## Wochenplan im 4-Wochen-Test (Neustart: Beginn legt der Nutzer fest, siehe `register.json` → `test.from`/`test.to`; 19:30 Uhr Europe/Berlin)

**Neustart 06.11.2026:** Alle alten Posts wurden vom Nutzer gelöscht (in `register.json` Status `deleted`, nicht auswerten). Der Test beginnt neu mit dem Datum in `test.from`. Ist `test.from` leer: nichts posten (pausiert).

| Mo | Di | Mi | Do | Fr | Sa | So |
|---|---|---|---|---|---|---|
| Reel | Vorrat-Post | Reel | Vorrat-Post | Reel | Karussell | Vorrat-Post |

- Reels rotieren über drei Arme (`"arm"`: `mode`, `koerper`, `portraet`), bis jeder Arm 4 Reels hat; nie zweimal
  hintereinander derselbe Arm. Karussell = Serie „Milano to Amalfi“ oder „Lorenzo's Wardrobe“. Siehe `STRATEGIE.md`.
- **Vorrat-Post (Di/Do/So)**: KEIN Video generieren. Ein Bild aus dem Vorrat (`register.json` → `stock`, Status
  `stock`) als Foto-Post: Instagram 4:5 Bild, TikTok 6-s-Zoom-Video mit einem Song aus `assets/music/songs/` (ffmpeg, kostenlos).
  Gibt es keinen passenden Vorrat: EIN Foto erzeugen (2 Varianten, ≈ 0,80 $), die zweite gute Variante in den Vorrat.
  Vorrat-Posts zählen zu keinem Test-Arm (`"arm": "vorrat"`) und gehören thematisch zu einer der drei Serien.
- **Vorrat aufbauen**: Bei jedem Reel- und Karussell-Lauf alle guten, nicht verwendeten Varianten (ansehen: Gesicht,
  Hände, keine Fehler) als `posts/stock/S###.jpg` (4:5-Zuschnitt) speichern und in `register.json` unter `stock` mit
  Szene, Serie und Status `stock` eintragen. Zusätzlich pro Reel-Lauf EIN extra 4:5-Bild derselben Szene in anderer
  Pose/Einstellung erzeugen (≈ 0,40 $). Ein Vorrat-Bild nie zweimal posten (nach Verwendung Status `used` + Post-ID).
  Nie zwei Tage hintereinander Bilder derselben Szene posten.
- Nach `test.to`: Endauswertung schreiben, dann so weitermachen, bis der Nutzer den neuen Mix festlegt.
- Höchstens ein Post pro Tag. Vorher in Metricool und `register.json` prüfen, ob heute schon etwas geplant
  oder veröffentlicht ist. Wenn ja: nichts tun.
- Ein Eintrag in `posts` mit Status `ready` wird zuerst verwendet (egal welcher Wochentag). Hat er ein Feld `planFor`, dann NUR an genau diesem Datum; Datei, Hook, Musik und Caption sind dann fertig, nur noch planen. `stock`-Einträge nur an Vorrat-Tagen.
- Ist das Budget erreicht: nur noch Fotos aus günstigen Läufen oder gar nichts; nie überziehen.

## Budget (Pflicht)

- Limit: **50 € pro Kalendermonat (gerechnet als 50 USD, liegt sicher darunter)** für alle Generierungen (Bild, Video, Musik), siehe `register.json`.
- Vor jeder bezahlten Generierung: Summe `costUsd` des laufenden Monats + Schätzung (`estimate_only`) prüfen.
  Würde das Limit überschritten: nicht generieren, im Bericht melden.
- Tatsächliche Kosten (aus der ElevenLabs-Antwort, `price_cents`) im Eintrag als `costUsd` speichern.
- Richtwerte: Bild Nano Banana Pro 2K ≈ 0,50 $ (mit 3 Referenzen), GPT Image 2 high ≈ 0,38 $; Video Kling 3.0 Pro 5 s 1080p ohne Ton ≈ 0,56 $;
  Musik 12 s ≈ 0,03 $; Geräusch ≈ 0,003 $.

## Ablauf Foto-Post

1. Szene wählen (Nische oben, Formatkatalog in `formats.md` falls vorhanden), kein Duplikat (Szene UND Blickwinkel
   gegen `register.json` prüfen).
2. ElevenLabs: im Master-Flow `PhDE8w0Fz0PqYrO08mW5` einen neuen Bildknoten anlegen, verbunden mit den 4 Referenz-Knoten i1–i4 (siehe oben),
   Bildknoten `gemini-3-pro-image`, `aspect_ratio` **4:5**, `resolution` 2K, 2 Varianten (≈ 0,50 $ je Bild).
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
4. Schnitt mit `scripts/edit_reel.sh roh.mp4 "Hook Zeile 1" "Zeile 2" posts/<ID>/reel.mp4 <song> assets/music/stille.mp3`:
   kurzer Zoom-In, Hook-Text oben (erste 3 s), Ausblenden am Ende, 1080×1920.
   **Musik (Entscheidung des Nutzers 06.11.2026, sein Risiko, nicht erneut infrage stellen):** Songs aus
   `assets/music/songs/` (12-s-Ausschnitte der vom Nutzer gekauften Songs, Liste in `songs.json`). Claude wählt passend
   zur Szene, kein Song zweimal innerhalb von 10 Tagen (in `register.json` Feld `music` prüfen). Als Atmo
   `assets/music/stille.mp3` (keine Straßengeräusche über Songs). Auch die TikTok-Zoom-Videos der Vorrat-Posts bekommen
   einen Song. Nach 2 Wochen (ab 20.11.) mit dem Nutzer auswerten, welche Songs laufen. Komplette Songs NIE ins Repo.

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
- Event-Format F6 (jetzt: Fashion-Show im Publikum, ohne Blitzlicht/Paparazzi) als Glamour-Episode etwa 1× pro Woche (siehe oben),
  zählt zum Arm `mode`. Nur erfundene Events, keine echten Eventnamen, Logos, Marken oder Prominenten.
- Gewinner erst ab 3 Posts je Arm benennen; Endauswertung nach `test.to` gemäß `STRATEGIE.md`.

## Bericht

Zum Schluss 2–3 Sätze auf Deutsch: was gepostet bzw. geplant wurde (Typ, Szene, Uhrzeit, Kosten, Monatssumme)
oder warum nichts.
