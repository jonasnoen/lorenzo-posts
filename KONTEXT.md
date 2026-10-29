# Kontext, Entscheidungen und Verlauf

Diese Datei erklärt einem neuen Chat, **warum** alles so ist, wie es ist. Die Arbeitsanleitung steht in
`CLAUDE.md`, der Formatkatalog in `formats.md`, die Post-Liste mit Kosten in `register.json`.

## Projekt in einem Satz
Ein fotorealistischer, männlicher KI-Influencer (**Lorenzo Valenti**), der zuerst Follower und eine
wiedererkennbare Figur aufbaut und später passende Produkte verkauft (Mode, Accessoires, Grooming —
noch nichts festgelegt, keine Kooperationen). Der Nutzer will möglichst wenig selbst machen und nicht selbst
vor der Kamera stehen.

## Accounts und Werkzeuge

| Was | Wert |
|---|---|
| Instagram | @lorenzovalenti.life (alte Posts am 29.10.2026 archiviert, nicht gelöscht) |
| TikTok | lorenzovalenti.life (am 29.10.2026 neu angelegt) |
| Bio | `Italian summers all year ☀️ Style · Travel · Dolce vita \| AI creator` |
| Name | Lorenzo Valenti |
| Profilbild | `assets/reference/profil.jpg` (Café-Terrasse, Altstadt) |
| Generierung | ElevenLabs-Connector (Bilder, Video, Musik, Geräusche) — kein eigener API-Key nötig |
| Posten | Metricool-Connector, eigene Marke für Lorenzo (getrennt von `jonas.noen`, blogId 7001759) |
| Recherche | vidIQ-Connector (Instagram/TikTok-Outlier) |
| Automatik | Geplante Aufgabe „Lorenzo Valenti · täglicher Post“, täglich 18:47 Europe/Berlin, Post um 19:30 |
| Repo | `jonasnoen/lorenzo-posts` (öffentlich, weil Metricool die Medien über raw.githubusercontent.com lädt) |
| Lokaler Ordner des Nutzers | `/Volumes/Extreme SSD/10_Influencer/Influencer_Lorenzo` (nur erreichbar, wenn sein Mac an ist) |

Ein Claude-Konto kann nur EIN GitHub-Konto und EIN Metricool-Login verbinden. Deshalb liegt das Repo unter
`jonasnoen`, und Lorenzo ist eine zweite **Marke** im selben Metricool-Konto.

## Figur (Entscheidungen des Nutzers)
- Erwachsener Mann, ca. 27, ca. 2 m groß, muskulös, aber realistisch proportioniert (keine gestreckten Beine).
- Dunkelbraunes welliges Haar, kurzer Bart, **helle blaugrüne Augen** mit natürlichem Glanz (Entscheidung 29.10.).
- Wirkung: moderner Dandy mit mediterraner Ästhetik, gelassen, selbstbewusst, „heiß“. Nicht professorenhaft.
- Ausdrücklich gewünscht: auch oberkörperfrei, Fitnesskörper, **Frauen, die ihn anhimmeln** (fiktive erwachsene
  Figuren, natürliche Interaktion: Blickkontakt, Lachen, gemeinsame Fotos — nichts Sexuelles).
- Kleidung: Leinen, offene Hemdkragen, dunkle oder bordeauxrote Anzüge, Strick, Loafer. Keine Logo-Sammlung.
- Gesicht-Referenz: `assets/reference/ref_a.png` (vom Nutzer am 29.10. als Referenz geschickt). Eine fast
  identische zweite Version liegt im SSD-Ordner als `Lorenzo-Hauptreferenz-FINAL-29-10.png`.
- Körper-Referenz: `assets/reference/ref_b.png` (= `Lorenzo-Koerperreferenz-FINAL-29-10.png`).

## Regeln, die der Nutzer und die Plattformen vorgeben
- **KI-Kennzeichnung bei jedem Post** (Instagram „AI info“ / TikTok „KI-generierte Inhalte“). EU AI Act Art. 50
  gilt seit 2.8.2026. „AI creator“ steht in der Bio (bewusst „AI“ statt „virtual“, weil eindeutiger).
- **Keine fremden Videos/Gesichter.** Virale Clips anderer nur als Format-Vorbild. Kein Face-Swap in fremde Clips.
- Keine Behauptung, dass Szenen echt passiert sind; keine echten Prominenten oder erkennbaren Orte als Werbung.
- Referenzbilder selbst nie posten („du sollst nicht einfach meine Referenz nehmen“), immer eigene neue Szenen.
- Budget: **50 € (gerechnet 50 USD) pro Monat** für alle Generierungen. Vor bezahlten Läufen Preis prüfen.
- Musik: selbst generiert (ElevenLabs Music), damit es keine Rechteprobleme gibt. Alternativ lädt der Nutzer
  die stumme Version hoch und wählt einen Trend-Sound in der App.
- Höchstens ein Post pro Tag. Captions Englisch.

## Verlauf
- **27.10.2026**: Konzept (moderner Dandy, „Clavicular-Stil“ als Inszenierungsreferenz), erste Bilder mit altem
  Gesicht. Instagram-Konten @lorenzovalenti.life und @alessiamoretti.life angelegt.
- **28.10.2026**: Erster Lorenzo-Post (roter Anzug) und Terrassenszene auf Instagram. **Alessia ist pausiert**
  (keine Posts, keine Profiländerungen ohne neue Freigabe).
- **29.10.2026** (dieser Neustart):
  - Gesicht mit blaugrünen Augen festgelegt, Körperreferenz gewählt.
  - Neues Profilbild (Café-Terrasse), realistische Ansicht von allen Seiten (`turnaround_a.jpg`).
  - Erstes Reel **R001** „POV: you take him out in Florence“: Startbild (Nano Banana Pro, 9:16) → Kling 3.0 Pro
    5 s → Schnitt mit Zoom-In, Hook-Text, eigener Musik und Straßen-Atmo. Kosten 1,84 $.
  - Alte Instagram-Posts archiviert, TikTok angelegt, alte Referenzen im SSD-Ordner ins Archiv verschoben.
  - Repo, Anleitung und tägliche Aufgabe eingerichtet. Erste Outlier-Analyse → `formats.md`.
  - Metricool war am Nachmittag zeitweise nicht erreichbar; die Marke für Lorenzo musste der Nutzer noch anlegen.

## Offene Punkte
- Lorenzo als eigene Marke in Metricool mit Instagram + TikTok verbinden (Nutzer).
- Eine frühere lokale Aufgabe (täglich 18:00, bis 03.11.2026, per Browser) könnte noch in der Claude-Desktop-App
  existieren und würde doppelt posten. Nutzer sollte sie dort deaktivieren.
- Monetarisierung erst testen, wenn Interesse messbar ist; keine Mindest-Followerzahl vereinbart.

## Bewährte technische Details
- ElevenLabs: Referenzen per `creative_attach_reference_file` mit Raw-GitHub-URL (mit Commit-SHA) auf einen Flow
  legen; Bildknoten mit `aspect_ratio` (sonst Standard 16:9!). Für das Video die gewählte Bildvariante per
  `creative_add_flow_asset_node` (generation_id) anheften und an Port `start_frame` verbinden.
- `gemini-3-pro-image` (Nano Banana Pro) hält das Gesicht mit zwei Referenzen sehr gut; ≈ 0,30 $ (1K) bzw. 0,40 $ (2K).
- Kling 3.0 Pro, 9:16, 5 s, 1080p, ohne Ton ≈ 0,56 $, Laufzeit ca. 2–3 Minuten.
- Schnitt: siehe `scripts/edit_reel.sh`.
