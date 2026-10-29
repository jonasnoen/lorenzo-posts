#!/usr/bin/env bash
# Schneidet ein rohes Kling-Video zu einem fertigen Reel (wie R001).
# Nutzung: scripts/edit_reel.sh roh.mp4 "Zeile 1" "Zeile 2" ausgabe.mp4 [musik.mp3] [atmo.mp3]
# - kurzer Zoom-In am Anfang, Hook-Text oben (erste 3 s), Musik + leise Atmo, Ausblenden am Ende
# - Ausgabe 1080x1920, H.264 CRF 18, AAC 192k
set -euo pipefail
IN="$1"; L1="$2"; L2="${3:-}"; OUT="$4"
REPO="$(cd "$(dirname "$0")/.." && pwd)"
MUSIC="${5:-$REPO/assets/music/italian_night_house_01.mp3}"
ATMO="${6:-$REPO/assets/music/atmo_street_night.mp3}"
FONT="${FONT:-/usr/share/fonts/opentype/inter/Inter-Bold.otf}"
TMP="$(mktemp -d)"
DUR=$(ffprobe -v error -show_entries format=duration -of csv=p=0 "$IN")

python3 - "$TMP/hook.png" "$L1" "$L2" "$FONT" <<'PY'
import sys
from PIL import Image, ImageDraw, ImageFont
out, l1, l2, font = sys.argv[1:5]
W, H = 1080, 1920
f = ImageFont.truetype(font, 62)
img = Image.new('RGBA', (W, H), (0, 0, 0, 0)); d = ImageDraw.Draw(img)
y = 300
for t in [l for l in (l1, l2) if l]:
    w = d.textlength(t, font=f)
    d.text(((W - w) / 2, y), t, font=f, fill='white', stroke_width=6, stroke_fill='black'); y += 82
img.save(out)
PY

FADE=$(python3 -c "print(max(0.0, $DUR - 0.55))")
ffmpeg -v error -y -i "$IN" -loop 1 -i "$TMP/hook.png" -i "$MUSIC" -i "$ATMO" -filter_complex "\
[0:v]scale=1080:1920:force_original_aspect_ratio=increase,crop=1080:1920,zoompan=z='if(lt(on,12),1.12-0.01*on,1.0)':x='iw/2-(iw/zoom/2)':y='ih/2-(ih/zoom/2)':d=1:s=1080x1920:fps=30,eq=contrast=1.04:saturation=1.08[v0];\
[1:v]format=rgba,fade=t=in:st=0:d=0.2:alpha=1,fade=t=out:st=2.8:d=0.4:alpha=1[t];\
[v0][t]overlay=0:0:shortest=1[v];\
[2:a]atrim=0:$DUR,afade=t=out:st=$FADE:d=0.55,volume=0.85[m];\
[3:a]atrim=0:$DUR,volume=0.35[s];\
[m][s]amix=inputs=2:normalize=0[a]" \
  -map "[v]" -map "[a]" -t "$DUR" -c:v libx264 -preset veryfast -crf 18 -pix_fmt yuv420p \
  -c:a aac -b:a 192k -movflags +faststart "$OUT"
rm -rf "$TMP"
echo "fertig: $OUT"
