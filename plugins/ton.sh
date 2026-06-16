#!/bin/bash
TON=$(curl -s "https://api.binance.com/api/v3/ticker/price?symbol=TONUSDT" | python3 -c "import sys,json; d=json.load(sys.stdin); print(f'\${float(d[\"price\"]):,.2f}')" 2>/dev/null)
sketchybar --set ton label="${TON:-N/A}"
